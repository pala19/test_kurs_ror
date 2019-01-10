require 'rails_helper'

RSpec.describe Api::RestaurantsController do
  describe 'GET #index' do
    subject { get :index, params: { key: key } }
    let(:key) { 'Restaurant' }

    let!(:restaurant) { create :restaurant, name: 'Restaurant', address: 'Restaurancka', accepted: true }

    it do
      expect(subject).to be_successful
      expect(JSON.parse(subject.body))
        .to eq([{ 'id' => restaurant.id, 'name' => restaurant.name }])
    end
  end
end
