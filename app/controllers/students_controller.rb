class StudentsController < ApplicationController
  def new
  @students = Student.all
  end

  def index
 # 	@main_result = "-"
	@students = Student.all
=begin	students.each do |stu|
	if stu.first == params[:first]
		@info = stu
	end
=end
end

  def show 
  	#render index
	@students = Student.all
	
  	redirect_to hat_path, notice: "Yes"
  end

=begin  def samples
  	redirect_to root_path, notice: "Luke, I am your father"
=end

  def import
  	Student.import(params[:file])
	redirect_to hat_path, notice: "Yay, success!"
  end
end
