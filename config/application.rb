require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Trasto
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
  
#----------testここから下を追加---------------------------
config.generators do |g|
  g.test_framework :rspec,
                   helper_specs: false,
                   routing_specs: false,
                   view_specs: false,
                   controller_specs: false
end
#----------testここまで-----------------------------------

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    #表示時間を日本時間にするために記載
    config.time_zone = 'Tokyo'

    #エラーメッセージを日本語化するために記載
    config.i18n.default_locale = :ja
    # config.i18n.load_path += Dir[Rails.root.join('config', "locales", "*.yml")]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]

    # 認証トークンをremoteフォームに埋め込む
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end
