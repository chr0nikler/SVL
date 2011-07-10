class StudentController < ApplicationController
  def create
    @student = Student.new(params[:student])
    if @student.save
      flash[:success] = "Student created successfully"
    else
      @title = "Student Creation"
      render
    end
  end
end
