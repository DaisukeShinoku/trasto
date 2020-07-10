class ApplicationMailer < ActionMailer::Base
  # 日本語化できる？
  # default from: 'noreply@example.com', charset: 'ISO-2022-JP'
  default from: 'noreply@example.com'
  layout 'mailer'
end
