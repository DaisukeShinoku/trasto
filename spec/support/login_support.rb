# 新しいモジュールを作成
module LoginSupport
  def valid_login(user)
    visit login_path
    fill_in "メールアドレス", with: user.email
    fill_in "パスワード", with: user.password
    click_button "ログイン"
  end
end

# LoginSupportモジュールをincludeする
RSpec.configure do |config|
  config.include LoginSupport
end