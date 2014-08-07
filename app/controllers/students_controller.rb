class StudentsController < ApplicationController
  def new
  end

  def index
  	@main_result = "-"
	students = Student.all
	students.each do |stu|
		@info = stu
	end
  end

  def show 
  	redirect_to root_path, notice: "Yes"
  end

=begin  def samples
  	redirect_to root_path, notice: "Luke, I am your father"
=end

  def import
  	Student.import(params[:file])
	redirect_to hat_path, notice: "Yay, success!"
  end
end
