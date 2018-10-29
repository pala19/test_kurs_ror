module RestorerPanel
  class RestorerController < ApplicationController
    before_action :authenticate_restorer!
    def index
      @restaurant = Restaurant.all
    end
      #def index; end
  end
end
