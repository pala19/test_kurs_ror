module RestorerPanel
  class RestorerController < ApplicationController
    before_action :authenticate_restorer!

    def index; end
  end
end
