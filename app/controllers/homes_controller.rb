class HomesController < ApplicationController
  def new
  end
  def create
  	@user = User.new(first_name: params[:User][:first_name], last_name: params[:User][:last_name], email: params[:User][:email],
  	 password: params[:User][:password], password_confirmation: params[:User][:password_confirmation], log_type: params[:User][:log_type])
  	@user.save
  end
end
