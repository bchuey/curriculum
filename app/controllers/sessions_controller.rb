class SessionsController < ApplicationController
  def new
  end

  def create
	@user = User.find_by(email: params[:email])
	if @user && @user.authenticate(params[:password])
		log_in @user
		puts "good"
		redirect_to "/users/new"
	else
		flash[:notice] = "Invalid"
		redirect_to '/users/new'
	end
end

  def destroy
		log_out
		redirect_to '/users/new'
	end
end
