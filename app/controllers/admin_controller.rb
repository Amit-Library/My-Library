class AdminController < ApplicationController
  def index
  	@users=User.all
  end

  def new
  	user = User.new
  end

  def destroy
  	user = User.find_by(params[:id])
  	  user.destroy
  	  redirect_to admin_index_path
  end
end
