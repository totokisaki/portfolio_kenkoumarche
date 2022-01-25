class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
