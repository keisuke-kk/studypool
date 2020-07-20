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

end