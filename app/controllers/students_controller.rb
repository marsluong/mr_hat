class StudentsController < ApplicationController
  def new
  end

  def show 
  	redirect_to root_path, notice: "No!"
  end

=begin  def samples
  	redirect_to root_path, notice: "Luke, I am your father"
=end

  def import
  	Student.import(params[:file])
	redirect_to hat_path, notice: "Yay, success!"
  end
end
