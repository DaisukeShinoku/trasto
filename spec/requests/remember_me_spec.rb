require 'rails_helper'

RSpec.describe "Remember me", type: :request do
  let(:user) { FactoryBot.create(:user) }

  # 2つのバグのテスト1
  context "with valid information" do
    # ログイン中のみログアウトすること
    it "ログイン中のみログアウトすること" do
      sign_in_as(user)     # spec/support/utilities.rbに定義
      expect(response).to redirect_to root_path

      # ログアウトする
      delete logout_path
      expect(response).to redirect_to root_path
      expect(session[:user_id]).to eq nil

      # 2番目のウィンドウでログアウトする
      delete logout_path
      expect(response).to redirect_to root_path
      expect(session[:user_id]).to eq nil
    end
  end

  # remember_meチェックボックスのテスト
  context "remember_meチェックボックスのテスト" do
    it "クッキーを記憶" do
      post login_path, params: { session: { email: user.email,
                                      password: user.password,
                                      remember_me: '1'} }
      expect(response.cookies['remember_token']).to_not eq nil
    end
  end 

  context "チェックなしでのログイン" do
    it "クッキーを記憶しない" do
      # クッキーを保存してログイン
      post login_path, params: { session: { email: user.email,
                                      password: user.password,
                                      remember_me: '1'} }
      delete logout_path
      # クッキーを保存せずにログイン
      post login_path, params: { session: { email: user.email,
                                      password: user.password,
                                      remember_me: '0'} }
      expect(response.cookies['remember_token']).to eq nil
    end
  end
end