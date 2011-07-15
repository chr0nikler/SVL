class UsersController < ApplicationController
  
  def logout
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.delivcer_registration_confirmation(@user)
      flash[:success] = "Welcome to the SVL!"	    
      render :action => "new"
    else
      render "new"
    end
  end
  def new
    @user = User.new
    render :action => "new"
  end
end

