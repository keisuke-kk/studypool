require 'rails_helper'

describe ShopsController do
  describe 'GET #new' do
    it "new.html.erbに遷移すること" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'DELETE #destroy' do
    it "shopの情報を１件削除すること" do
      delete :destroy
      expect{ Shop.destroy }.to change{ Shop.count }.by(-1)
    end
  end

  describe 'GET #edit' do
    it "@shopに正しい値が入っていること" do
      shop = create(:shop)
      get :edit, params: { id: shop }
      expect(assigns(:shop)).to eq shop
    end

    it "edit.html.erbに遷移すること" do
      shop = create(:shop)
      get :edit, params: { id: shop }
      expect(response).to render_template :edit
    end
  end

  describe 'GET #index' do
    it "@shopに正しい値が入っていること" do
      shops = create_list(:shop, 3)
      get :index
      expect(assigns(:shops)).to match(shops.sort{ |a, b| b.created_at <=> a.created_at })
    end

    it "index.html.erbに遷移すること" do
      get :index
      expect(response).to render_template :index
    end
  end

end