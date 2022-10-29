class SchedulesController < ApplicationController
  before_action :set_lesson, only: [:new, :create]

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.lesson = @lesson
    @schedule.user = current_user
    if @schedule.save
      redirect_to lesson_path(@lesson)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def set_lesson
    @lesson = Lesson.find(params["lesson_id"])
  end

  def schedule_params
    params.require(:schedule).permit(:time, :duration)
  end
end
