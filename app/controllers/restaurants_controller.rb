# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    # @restaurants = Restaurant.where(accepted: true)
    @restaurants = RestaurantsProvider.new(params[:key]).results
  end

  # rubocop:disable Metrics/AbcSize
  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :address).merge(restorer_id: current_restorer.id))
    flash[:notice] = if @restaurant.save
                       'Nowa restaurancja dodana. Trwa weryfikacja administratora.'
                     else
                       @restaurant.errors.full_messages.join('. ')
                     end
    redirect_to restorer_panel_restorer_index_path(@restaurant.restorer_id)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    menu = Menu.where(restaurant_id: @restaurant.id).first
    if menu.nil?
      menu = Menu.new(restaurant_id: @restaurant.id)
      menu.errors.full_messages.join('. ') unless menu.save
    end
    @menu_item = MenuItem.where(menu_id: menu.id)
    @new_menu = MenuItem.new(menu: menu)
  end
end
