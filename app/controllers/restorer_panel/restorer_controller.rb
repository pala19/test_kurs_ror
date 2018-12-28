# frozen_string_literal: true

module RestorerPanel
  class RestorerController < ApplicationController
    before_action :authenticate_restorer!
    def index
      @restaurant = Restaurant.where(restorer_id: current_restorer.id).where(accepted: true)
      @newrestaurant = Restaurant.new
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      @tables = @restaurant.tables
      @table = Table.new(restaurant: @restaurant)
      menu = Menu.where(:restaurant_id => @restaurant.id).first
      if menu.nil?
        menu = Menu.new(restaurant_id: @restaurant.id)
        if !menu.save
          menu.errors.full_messages.join('. ')
        end
      end
      @menu_item = MenuItem.where(:menu_id => menu.id)
      @new_menu = MenuItem.new(menu: menu)
    end
  end
end
