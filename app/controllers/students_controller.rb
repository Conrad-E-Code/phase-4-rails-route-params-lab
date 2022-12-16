class StudentsController < ApplicationController

  def index 
    if params[:name] != nil

      students = Student.where("lower(first_name) = lower(?)", params[:name]).or(Student.where("lower(last_name) = lower(?)", params[:name] ))
      render json: students

    else
    students = Student.all
    render json: students

    end
  end
  def show
    student = Student.find params[:id]
    render json: student
   end

end
