class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # {student: {name: 'whatever', dob: ''}}
    Student.new(student_params)

    redirect_to students_path
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(student_params)

    redirect_to @student
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :dob)
  end
end
