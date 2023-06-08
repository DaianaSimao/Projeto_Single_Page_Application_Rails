require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BookRegister
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    I18n.load_path += Dir[File.expand_path("config/locales") + "/*.yml"]
    I18n.default_locale = "pt-BR"
    config.time_zone = "Brasilia"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
