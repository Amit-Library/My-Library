class AdminController < ApplicationController
  def index
  	@users=User.all
  end
  def destroy
    @user.destroy
    respond_with(@user)
  end
end
