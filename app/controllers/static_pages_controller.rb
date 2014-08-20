class StaticPagesController < ApplicationController

  def new
  end
  
  def login
  end

  def index
  end

  def show 
  end

  def signup
  end

  def hat
  	@students = Student.find(rand(6-1) +1)
  end

  def statistics
  end

  def settings
  end

  def import
  	Static_page.import(params[:file])
	redirect_to hat_path, notice: "Success"
  end
end
