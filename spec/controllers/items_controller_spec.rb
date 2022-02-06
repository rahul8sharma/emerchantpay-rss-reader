require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
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
      create_list(:item, 3)

      get :index
      expect(assigns(:paginator).records).to eq(Item.all.order('id desc'))
    end
  end

  describe 'GET show' do
    it 'should return success' do
      item = create(:item)

      get :show, params: { id: item.id }
      expect(response.code).to eql('200')
    end

    it "renders the index template" do
      item = create(:item)

      get :show, params: { id: item.id }
      expect(response).to render_template('show')
    end

    it 'should match title' do
      item = create(:item, title: 'test')

      get :show, params: { id: item.id }
      expect(assigns(:item).title).to eql('test')
    end
  end
end
