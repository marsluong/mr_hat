class StudentsController < ApplicationController

  def new
  	@students = Student.find(1)
  end

  def index
  end

  def show 
  	redirect_to hat_path
  end

  def import
  	Student.import(params[:file])
	redirect_to hat_path, notice: "Yay, success!"
  end
end
