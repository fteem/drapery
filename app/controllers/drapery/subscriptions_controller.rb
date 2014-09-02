require_dependency "drapery/application_controller"

module Drapery
  class SubscriptionsController < ApplicationController

    def create
      if Subscription.create(email: params[:subscription][:email])
        flash[:notice] = "Your email has been registered. Thank you!"
      else
        flash[:error]  = "Sorry, an error occured. Please try again."
      end

      redirect_to controller: 'drapery', action: 'index'
    end
  end
end
