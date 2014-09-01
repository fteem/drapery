require_dependency "drapery/application_controller"

module Drapery
  class DraperyController < ApplicationController

    def index
      render :index
    end
  end
end
