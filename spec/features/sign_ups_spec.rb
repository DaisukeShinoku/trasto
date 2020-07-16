# require 'rails_helper'

# RSpec.feature "SignUps", type: :feature do
#   include ActiveJob::TestHelper

#   # ユーザーはサインアップに成功する
#   scenario "ユーザーはサインアップに成功する" do
#     visit root_path

#     click_link "ユーザー登録"

#     perform_enqueued_jobs do
#       expect {
#         fill_in "アカウント名",              with: "sutest"
#         fill_in "表示名",              with: "SUTEST"
#         fill_in "メールアドレス",     with: "sutest@example.com"
#         fill_in "パスワード(6文字以上)",         with: "123456"
#         fill_in "パスワード(確認用)",  with: "123456"
#         click_button "新規登録"
#       }.to change(User, :count).by(1)

#       expect(page).to have_content "本登録のためのリンクをメールアドレスにお送りしました。"
#       expect(current_path).to eq root_path
#     end

#     # 以下はアカウント有効化メールのテストです
#     # 詳細なテストは後で追加します
#     mail = ActionMailer::Base.deliveries.last

#     aggregate_failures do
#       expect(mail.to).to eq ["test@example.com"]
#       expect(mail.from).to eq ENV['GMAIL_ADDRESS']
#       expect(mail.subject).to eq "本登録が完了しました、trastoへようこそ!"
#     end
#   end
# end
