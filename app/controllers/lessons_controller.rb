class LessonsController < ApplicationController

  before_action :short_params, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.all
  end

  def show

  end


  def calendar
    @lessons = Lesson.all
    @lessons_by_date = @lessons.group_by(&:created_at)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to @lesson, success: 'Предмет успешно создан'
    else
      render 'new', danger: 'Предмет не создан'
end
  end

  def edit

  end

  def update
    if @lesson.update_attributes(lesson_params)
      redirect_to @lesson, success: 'Предмет успешно создан'
    else
      render 'edit', danger: 'Предмет не обновлен'
    end
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_path, success: 'Предмет удален'
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :notes, :attachments, :group_id )
  end

  def short_params
    @lesson = Lesson.find(params[:id])

  end

end