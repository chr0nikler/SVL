class UserController < ApplicationController
  def login
  end
  def logout
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the SVL!"	    
      redirect_to @user
    else
      @title = "Home"
      @user.password = nil
      render 'new'
    end
  end
  yada yada
  

end
