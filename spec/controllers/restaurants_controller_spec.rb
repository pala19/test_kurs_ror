require 'rails_helper'

RSpec.describe RestaurantsController do
    describe "GET index" do
      it "assigns to @restaurants" do
        restorer = Restorer.create! id:1, email: 'a@b.c', surname: 'sth', password: 'abcdefg'
        restaurant = Restaurant.create! accepted: true, restorer_id: 1
        get :index
        expect(assigns(:restaurants)).to eq([restaurant])
      end
      it "doesn't assign to @restaurants if restaurant is not accepted" do
        restorer = Restorer.create! id:1, email: 'a@b.c', surname: 'sth', password: 'abcdefg'
        restaurant = Restaurant.create! accepted: false, restorer_id: 1
        get :index
        expect(assigns(:restaurants)).to eq([])
      end
    end
  end