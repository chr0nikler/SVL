class StudentsController < ApplicationController
  def new
    @student = Student.new
  end
  def create
    @student = Student.new(params[:student])
    if @student.save
      flash[:success] = "Student created successfully"
      render'new'
    else
      @title = "Student Creation"
      render "new"
    end
  end
  def index
    if params[:search] 
      @student = Student.find(:all, :conditions => ["firstname like ?", "%#{params[:search]}%"])
    else 
      @student = Student.find(:all)
     
    end
  end

end
