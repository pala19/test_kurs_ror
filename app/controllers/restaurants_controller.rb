# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
