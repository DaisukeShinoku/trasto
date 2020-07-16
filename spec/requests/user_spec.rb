require 'rails_helper'

RSpec.describe "User pages", type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:other_user) { FactoryBot.create(:user) }

  # new
  describe "GET #new" do
    # 正常なレスポンスを返すこと
    it "正常なレスポンスを返すこと" do
      get signup_path
      expect(response).to be_successful
      expect(response).to have_http_status "200"
    end
  end

  describe "GET #show" do

    # ログイン済みのユーザーとして
    context "ログイン済みのユーザーとして" do
      # 正常なレスポンスを返すこと
      it "正常なレスポンスを返すこと" do
        sign_in_as user
        get user_path(user)
        expect(response).to be_successful
        expect(response).to have_http_status "200"
      end
    end

    # ログインしていないユーザーの場合
    context "ログインしていないユーザーの場合" do 
      # ログイン画面にリダイレクトすること
      it "ログイン画面にリダイレクトすること" do
        get user_path(user)
        expect(response).to redirect_to login_path
      end
    end
  end

  describe "#edit" do
    # 認可されたユーザーとして
    context "認可されたユーザーとして" do
      it "正しいレスポンスが返ってくる" do
        sign_in_as user
        get edit_user_path(user)
        expect(response).to be_successful
        expect(response).to have_http_status "200"
      end
    end

    # ログインしていないユーザーの場合
    context "ログインしていないユーザーの場合" do 
      # ログイン画面にリダイレクトすること
      it "ログイン画面にリダイレクトすること" do
        get edit_user_path(user)
        expect(response).to have_http_status "302"
        expect(response).to redirect_to login_path
      end
    end

    # アカウントが違うユーザーの場合
    context "アカウントが違うユーザーの場合" do 
      # ホーム画面にリダイレクトすること
      it "ホーム画面にリダイレクトすること" do
        sign_in_as other_user
        get edit_user_path(user)
        expect(response).to redirect_to root_path
      end
    end
  end

  describe "#update" do
    # 認可されたユーザーとして
    context "認可されたユーザーとして" do
      # ユーザーを更新できること
      it "ユーザーを更新できること" do
        user_params = FactoryBot.attributes_for(:user, account_name: "newname")
        sign_in_as user
        patch user_path(user), params: { id: user.id, user: user_params }
        expect(user.reload.account_name).to eq "newname"
      end
    end

    # ログインしていないユーザーの場合
    context "ログインしていないユーザーの場合" do 
      # ログイン画面にリダイレクトすること
      it "ログイン画面にリダイレクトすること" do
        user_params = FactoryBot.attributes_for(:user, account_name: "newname")
        patch user_path(user), params: { id: user.id, user: user_params }
        expect(response).to have_http_status "302"
        expect(response).to redirect_to login_path
      end
    end

    # アカウントが違うユーザーの場合
    context "アカウントが違うユーザーの場合" do 
      # ホーム画面にリダイレクトすること
      it "ホーム画面にリダイレクトすること" do
        user_params = FactoryBot.attributes_for(:user, account_name: "newname")
        sign_in_as other_user
        patch user_path(user), params: { id: user.id, user: user_params }
        expect(response).to redirect_to root_path
      end
    end
  end

  describe "#destroy" do
    # 認可されたユーザーとして
    context "認可されたユーザーとして" do
      # ユーザーを削除できること
      it "ユーザーを削除できること" do
        sign_in_as user
        expect {
          delete user_path(user), params: { id: user.id }
        }.to change(User, :count).by(-1)
      end
    end

    # アカウントの違うユーザーの場合
    context "アカウントの違うユーザーの場合" do
      # ホーム画面にリダイレクトすること
      it "ユーザーの一覧画面にリダイレクトすること" do
        sign_in_as other_user
        delete user_path(user), params: { id: user.id }
        expect(response).to redirect_to users_path
      end
    end

    # ゲストとして
    context "ゲストとして" do
      it "302responseが返ってくる" do
        delete user_path(user), params: { id: user.id }
        expect(response).to have_http_status "302"
      end

      it "ログインページに誘導" do
        delete user_path(user), params: { id: user.id }
        expect(response).to redirect_to login_path
      end
    end
  end

  describe "#create" do
    include ActiveJob::TestHelper

    it "登録情報が無効な場合" do
      perform_enqueued_jobs do
        expect {
          post users_path, params: { user: { name: "",
                                            email: "user@invalid",
                                            password: "foo",
                                            password_confirmation: "bar" } }
        }.to_not change(User, :count)
      end
    end

    it "登録情報が有効な場合" do
      perform_enqueued_jobs do
        expect {
          post users_path, params: { user: { account_name: "example",
                                            display_name: "ExampleUser",
                                            email: "user@example.com",
                                            password: "password",
                                            password_confirmation: "password" } }
        }.to change(User, :count).by(1)

        expect(response).to redirect_to root_path
        user = assigns(:user)    # gem 'rails-controller-testing'をインストール
        # 有効化していない状態でログインしてみる
        sign_in_as(user)
        expect(session[:user_id]).to be_falsey
        # 有効化トークンが不正な場合
        get edit_account_activation_path("invalid token", email: user.email)
        expect(session[:user_id]).to be_falsey
        # トークンは正しいがメールアドレスが無効な場合
        get edit_account_activation_path(user.activation_token, email: 'wrong')
        expect(session[:user_id]).to be_falsey
        # 有効化トークンが正しい場合
        get edit_account_activation_path(user.activation_token, email: user.email)
        expect(session[:user_id]).to eq user.id
        expect(user.account_name).to eq "example"
        expect(user.display_name).to eq "ExampleUser"
        expect(user.email).to eq "user@example.com"
        expect(user.password).to eq "password"
      end
    end
  end
end