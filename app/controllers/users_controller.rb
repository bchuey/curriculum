class UsersController < ApplicationController

  def new

    render "/users/new"
  end

  def create

    user = User.new(user_params)
    if user.save
      flash[:success] = "User created"
      last_user = User.last
      log_in user
      # redirect_to "/users/#{last_user.id}"
      redirect_to '/users/new'
    else
      flash[:errors] = user.errors.full_messages
      redirect_to '/users/new'
    end

  end

  def edit
  end

  def show

    @user = User.find_by(id: session[:user_id])

    render "/users/show"
  end

  def update
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
  
end
