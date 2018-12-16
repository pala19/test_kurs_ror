# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    #@restaurants = Restaurant.where(accepted: true)
    @restaurants = RestaurantsProvider.new(params[:key]).results
  end

  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :address).merge(restorer_id: current_restorer.id))
    flash[:notice] = if @restaurant.save
                       'Nowa restaurancja dodana. Trwa weryfikacja administratora.'
                     else
                       @restaurant.errors.full_messages.join('. ')
                     end
    redirect_to restorer_panel_restorer_index_path(@restaurant.restorer_id)
  end
end
