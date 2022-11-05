class SchedulesController < ApplicationController
  before_action :set_lesson, only: [:new, :create]
  before_action :set_schedule, only: [:edit, :update, :destroy]

  def new
    @schedule = Schedule.new
    authorize(@schedule)
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.lesson = @lesson
    authorize(@schedule)
    if @schedule.save
      redirect_to lesson_path(@lesson)
    else
      render :new, status: :unprocessable_entity
    end
  end
def edit
  authorize(@schedule)
   @lesson = @schedule.lesson
end

def update
  authorize(@schedule)
  @lesson = @schedule.lesson
  if @schedule.update(schedule_params)
  redirect_to lesson_path(@lesson)
    else
      render :edit, status: :unprocessable_entity
    end
end

def destroy
  authorize(@schedule)
  @schedule.destroy
  redirect_to lesson_path(@schedule.lesson), status: :see_other
end

  private
  def set_lesson
    @lesson = Lesson.find(params["lesson_id"])
  end

  def set_schedule
    @schedule= Schedule.find(params[:id])
  end

  def schedule_params
    params.require(:schedule).permit(:time, :duration)
  end
end
