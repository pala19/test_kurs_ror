module Api
  class RestaurantsController < ApplicationController
    def index
      provider = RestaurantsProvider.new(key: params[:key])
      render json: provider.results
    end
  end
end