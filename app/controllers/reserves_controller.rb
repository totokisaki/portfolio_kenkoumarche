class ReservesController < ApplicationController
  def index
    @reserves = Reserve.where(user_id: current_user.id )
    @exam = Exam.all
  end

  def new
    @reserve = Reserve.new
    @exam = Exam.find(params[:exam_id])
  end

  def create
    @reserve = Reserve.new(params.require(:reserve).permit(:reserve_date, :reserve_time, :user_id , :exam_id))
        if @reserve.save
          flash[:notice] = "予約が完了をしました"
          redirect_to :reserves
        else
          render template: "rooms/show"
        end
  end

  def show
  end

  def edit
  end

  def update
  end
  
  def destroy
    @reserve = Reserve.find(params[:id])
        @reserve.destroy
        flash[:notice] = "予約をキャンセルしました"
        redirect_to :reserves
  end
end
