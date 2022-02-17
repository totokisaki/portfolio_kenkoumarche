class MouthsController < ApplicationController
  def index
  end

  def new
    @mouth = Mouth.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @mouth = Mouth.new(params.require(:mouth).permit(:mouth_title, :mouth_contents, :restaurant_id))   
        if @mouth.save
          flash[:notice] = "口コミを投稿をしました"
          redirect_to :resutaurants
        else
          render template: "restaurants/show"
        end
  end

  def show
    @mouth = Mouth.find(params[:id])
  end

  def edit
    @mouth = Mouth.find(params[:id])
  end

  def update
  end

  def destroy
    @mouth = Mouth.find(params[:id])
        @mouth.destroy
        flash[:notice] = "投稿を削除しました"
        redirect_to :restaurants
  end
end
