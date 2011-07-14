class UsersController < ApplicationController
  def login
  end
  def logout
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the SVL!"	    
      redirect_to @user
    else
    end
  end
  def new
    @user = User.new
    render :action => "new"
  end
end

