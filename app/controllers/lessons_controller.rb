class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find_by(id: params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.save
    redirect_to lesson_path(@lesson.id)
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name)
  end
end
