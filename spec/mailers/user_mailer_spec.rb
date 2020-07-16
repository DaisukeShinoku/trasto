require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  let(:user) { FactoryBot.create(:user) }

  describe "アカウント有効化" do
    let(:mail) { UserMailer.account_activation(user) }

    # メール送信のテスト
    it "件名のテスト" do
      expect(mail.to).to eq ["tester1@example.com"]
      expect(mail.from).to eq ["noreply@example.com"]
      expect(mail.subject).to eq "ユーザー登録の確認(trasto)"
    end

    # メールプレビューのテスト
    # it "本文のテスト" do
    #   expect(mail.body.encoded).to match user.display_name
    #   expect(mail.body.encoded).to match user.activation_token
    #   expect(mail.body.encoded).to match CGI.escape(user.email)
    # end
  end

  describe "password_reset" do
    let(:mail) { UserMailer.password_reset(user) }

    # メール送信のテスト
    it "renders the headers" do
      user.reset_token = User.new_token
      expect(mail.to).to eq ["tester2@example.com"]
      expect(mail.from).to eq ["noreply@example.com"]
      expect(mail.subject).to eq "パスワードの再設定(trasto)"
    end

    # メールプレビューのテスト
  #   it "renders the body" do
  #     user.reset_token = User.new_token
  #     expect(mail.body.encoded).to match user.reset_token
  #     expect(mail.body.encoded).to match CGI.escape(user.email)
  #   end
  end
end