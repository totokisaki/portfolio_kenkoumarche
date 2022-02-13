class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @mouths = Mouth.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:store_name, :address, :genre, :price, :store_image, :user_id))
      if @restaurant.save
        redirect_to :restaurants
      else
        render "mouths"
      end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @mouth = Mouth.new
  end

  def edit
  end

  def update
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      flash[:notice] = "削除しました"
      redirect_to :restaurants
  end
end
