require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rapidoobr
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
     config.time_zone = 'Brasilia'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
     config.i18n.load_path += Dir[Rails.root.join('pt-BR', 'locales', '*.{rb,yml}').to_s]

     config.i18n.default_locale = :"pt-BR"

     config.active_record.default_timezone = :local # Or :utc

     config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')


  end
end
