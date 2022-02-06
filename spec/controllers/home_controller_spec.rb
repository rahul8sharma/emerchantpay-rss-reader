require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET index' do
    it 'should return success' do
      get :index
      expect(response.code).to eql('200')
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template('index')
    end

    it "assigns @paginator" do
      feed = create(:feed)
      items = create_list(:item, 3, feed_id: feed.id)

      get :index

      expect(assigns(:paginator).records).to eq(items.reverse)
    end
  end
end
