class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  helper_method :signed_in?
  def signed_in?
    !current_user.nil?
  end
  def logout
  end
  def show
    @user = User.find(params[:id])
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

