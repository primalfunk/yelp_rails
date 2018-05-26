class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def delete
    Shop.find(params[:id]).destroy
  end

  def create
    @shop = Shop.new(shops_params)
 
    if @shop.save
      redirect_to shops_path
    else
      render :new
    end
  end
 
  def update
    @shop = Shop.find(params[:id])
  
    if @shop.update(shops_params)
      redirect_to shops_path
    else
      render :edit
    end
  end

  private
 
    def shops_params
      params.require(:shop).permit(:name, :desc, :ranking, :is_deleted)
    end
end
