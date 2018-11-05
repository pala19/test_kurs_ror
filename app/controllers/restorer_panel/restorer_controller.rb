# frozen_string_literal: true

module RestorerPanel
  class RestorerController < ApplicationController
    before_action :authenticate_restorer!
    def index
      @restaurant = Restaurant.where(restorer_id: current_restorer.id)
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      @table = Table.where(restaurant_id: @restaurant.id)
      # @table = Table.new(restaurant: @restaurant)
    end
  end
end
