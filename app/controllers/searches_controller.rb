class SearchesController < ApplicationController
  def new
    @search = Search.new
    render 'new'
  end
  def create 
    @search = Search.create(params[:search])
    render 'new'
  end
end
