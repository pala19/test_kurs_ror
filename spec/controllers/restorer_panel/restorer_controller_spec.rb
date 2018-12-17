require 'rails_helper'
RSpec.describe RestorerPanel::RestorerController do
  let(:restorer) { create :restorer }
  let(:restaurant) { create :restaurant, owner: restorer, accepted: false }
  before do
    sign_in restorer
  end
  describe 'Get #index' do
    it "doesn't assign to @restaurants if restaurant is not accepted" do
      get :index
      expect(assigns(:restaurants)).to eq(nil)
    end
  end
end
