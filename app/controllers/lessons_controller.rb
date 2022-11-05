class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @lessons = policy_scope(Lesson.search_bar_lessons(params[:query]))
      else
        @lessons = policy_scope(Lesson).all
    end
  end

  def show
    @lesson = Lesson.find_by(id: params[:id])
    authorize(@lesson)
  end

  def new
    @lesson = Lesson.new
    authorize(@lesson)
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    authorize(@lesson)
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @lesson = Lesson.find_by(id: params[:id])
    authorize(@lesson)
  end

  def update
    @lesson = Lesson.find_by(id: params[:id])
    authorize(@lesson)
    @lesson.update(lesson_params)
    redirect_to @lesson
  end

  def destroy
    @lesson = Lesson.find_by(id: params[:id])
    authorize(@lesson)
    @lesson.destroy
    redirect_to lessons_path, status: :see_other
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :description, :photo)
  end
end
