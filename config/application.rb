require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module Hermes
  class Application < Rails::Application
    config.load_defaults 6.1
    config.action_cable.url = ENV['ACTION_CABLE_URL']
  end
end
