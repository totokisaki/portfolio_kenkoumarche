class CheckupController < ApplicationController
  def index
    @checkup = Checkup.all
  end

  def new
    @checkup = Checkup.new
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
