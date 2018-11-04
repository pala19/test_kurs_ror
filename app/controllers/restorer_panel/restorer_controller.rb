# frozen_string_literal: true

module RestorerPanel
  class RestorerController < ApplicationController
    before_action :authenticate_restorer!
    def index
      @restaurant = Restaurant.where(:restorer_id => current_restorer.id)
    end
   # def add
    #  @restaurant = Restaurant.find(params[:id])
     # @table = Table.new(restaurant: @restaurant)
    #end

  end
end
