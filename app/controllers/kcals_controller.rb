class KcalsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @kcal = Kcal.new(kcal_params)
    if @kcal.save
      redirect_to kcal_path(@kcal) 
    else
      redirect_to("/kcals/new")
    end
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
    @requiredcalories = @height * @height * 22 * @activities
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
