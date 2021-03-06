class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update]
  before_action :correct_user, 	 only: [:edit, :update]

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

 def create
  	@user = User.new(user_params) 

	if @user.save
		sign_in @user
		flash[:success] = "Welcome to Mr. Hat!"
		redirect_to @user
	else 
		render 'new'
	end
  end

  def add_course
	@my_course = :course_name
  	remember_token = User.digest(cookies[:remember_token])
	@user = User.find_by(remember_token: remember_token)
  	course_list = Course.new(:course => :course_name, :email => @user.email)
	course_list.save
  end

  def edit
  end

   def courses
 #  @my_course = :course_name
    remember_token = User.digest(cookies[:remember_token])
 	@user = User.find_by(remember_token: remember_token)
#	course_list = Course.new(:course => :course_name, :email => @user.email)
#	course_list.save
  end

  def update
  	if @user.update_attributes(user_params)
		flash[:success] = "Profile update"
		redirect_to @user
	else
		render 'edit'
  	end
  end

  private
  	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end

	#before filters

	def signed_in_user
		unless signed_in?
			store_location
			redirect_to signin_url, notice: "Please sign in." 
		end
	end

	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_url) unless current_user?(@user)
	end


end
