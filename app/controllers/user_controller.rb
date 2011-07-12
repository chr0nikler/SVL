class UserController < ApplicationController
  def login
  end
  def logout
  end
  def create
    @suser = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the SVL!"	    
      redirect_to @user
    else
      @title = "Sign in"
      render 'new'
    end
  end
end
