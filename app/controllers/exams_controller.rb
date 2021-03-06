class ExamsController < ApplicationController
  def index
    @exams = Exam.where(user_id: current_user.id )
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(params.require(:exam).permit(:exam_image, :exam_item, :exam_purpose, :exam_advice, :user_id))
      if @exam.save
        flash[:notice] = "登録しました"
        redirect_to :exams
      else
        render "new"
      end
  end

  def show
    @exam = Exam.find(params[:id])
    @reserve = Reserve.new
  end

  def edit
    @exam = Exam.find(params[:id])
  end

  def update
    @exam = Exam.find(params[:id])
      if @exam.update(params.require(:exam).permit(:exam_image, :exam_item, :exam_purpose, :exam_advice))
        flash[:notice] = "情報を更新しました"
        redirect_to :exams
      else
        render "edit"
      end
  end

  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy
    flash[:notice] = "削除しました"
    redirect_to :exams
  end

  def search
    @exams = Exam.all
  end
end
