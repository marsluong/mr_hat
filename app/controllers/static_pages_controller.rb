class StaticPagesController < ApplicationController
  def login
  end

  def signup
  end

  def hat
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
