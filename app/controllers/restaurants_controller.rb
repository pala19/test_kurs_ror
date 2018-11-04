# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end
end
