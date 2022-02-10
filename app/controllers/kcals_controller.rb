class KcalsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @kcal = Kcal.new(kcal_params)
    @kcal.save
    redirect_to kcal_path(@kcal) 
  end

  def kcal_params 
    params.require(:kcal).permit(:height, :weight, :activities) 
  end

  def show
    @kcal = Kcal.find params[:id] 
    @height = @kcal["height"] * 0.01
    @weight = @kcal["weight"]
    @activities = @kcal["activities"] 
    @standardweight = @height * @height * 22
    @bmi = @weight / @height / @height
    @requiredcalories = @standardweight * @activities
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
