require_dependency "drapery/application_controller"

module Drapery
  class DraperyController < ApplicationController

    def index
      render :index
    end

    def subscribe
      if Subscription.create(email: params[:email])
        flash[:notice] = "Your email has been registered. Thank you!"
      else
        flash[:error]  = "Sorry, an error occured. Please try again."
      end

      redirect_to :index
    end
  end
end
