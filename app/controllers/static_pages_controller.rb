class StaticPagesController < ApplicationController
def new
@students = Student.all
end
  def login
  end

def index
		@students = Student.all
	end

def show 
	@students = Student.all
	end

def signup
  end

  def hat
  @students = Student.all

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
