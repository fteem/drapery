module Drapery
  class Engine < ::Rails::Engine
    isolate_namespace Drapery

    def self.is_mounted?
      route = Rails.application.routes.routes.detect do |route|
        route.app == self
      end
      route != nil && route.path != nil
    end

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.assets false
      g.helper false
    end
  end
end
