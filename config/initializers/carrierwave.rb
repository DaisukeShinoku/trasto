# CarrierWaveの設定呼び出し
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

# CarrierWave.configure do |config|
  # config.fog_credentials = {
    # provider: 'AWS',
    # aws_access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
    # aws_secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
    # region: 'ap-northeast-1'
  # }

  # config.fog_directory  = Rails.application.credentials.dig(:s3_fog_directory)
  # config.cache_storage = :fog
# end

CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_public = false
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'ap-northeast-1'
    }
    config.fog_directory  = 'trasto-image'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/trasto-image'
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end  
end