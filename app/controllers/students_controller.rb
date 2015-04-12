class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def edit
    student = Student.find(params[:id])
    render :edit
  end

  def update
    student = Student.find(params[:id])

    if student.update
      flash[:notice] = "Student details update successfully"
    else 
      flash[:error] = "Something went wrong while updating the student"
    end
  end

  def show
  end
end
