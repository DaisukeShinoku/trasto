ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  # address のところは変更しないので注意。自分はここでハマりました。
  address: 'smtp.gmail.com', 
  domain: 'gmail.com',
  port: 587,
  # user_name は自分のメールアドレスを記載。
  user_name: 'mailsystem.trasto.ghs815@gmail.com',
  # password は作成したアプリパスワードを記載。
  password: 'yabwfsphmghirtqt',
  authentication: 'plain',
  enable_starttls_auto: true
}