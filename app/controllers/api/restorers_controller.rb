module Api
  class RestorersController < ApplicationController
    def email_exists
      render json: Restorer.where(email: params[:email]).exists?
    end
  end
end
