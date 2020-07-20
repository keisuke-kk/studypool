class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    Shop.create(shop_params)
    redirect_to shops_path
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to shops_path
  end

  private

    def shop_params
      params.require(:shop).permit(:name, :aicon_image, :detail, :tel, :address, :url)
    end

end
