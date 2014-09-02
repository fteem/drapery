require_dependency "drapery/application_controller"

module Drapery
  class DraperyController < ApplicationController
    
    def index
      @subscription = Subscription.new
    end

  end
end
