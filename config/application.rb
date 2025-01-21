require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module Hermes
  class Application < Rails::Application
    config.load_defaults 6.1
    config.action_cable.url = ENV['ACTION_CABLE_URL']
    config.action_controller.default_protect_from_forgery = true
    config.action_dispatch.cookies_same_site_protection = :none
    config.action_controller.default_protect_from_forgery = false if ENV['RAILS_ENV'] == 'development'
    config.middleware.use Rack::Attack
  end
end
