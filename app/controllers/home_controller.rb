class HomeController < ApplicationController
  def top
    @exams = Exam.all
  end

  def about
  end
end
