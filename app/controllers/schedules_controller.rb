class SchedulesController < ApplicationController
  before_action :set_schedules, only: [ :show, :edit, :update, :destroy]

  def index
    @schedules = Schedule.all
  end

  def show

  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedules_params)
    if @schedule.save
      redirect_to schedules_path, success: 'Вы создали расписание'
    else
      flash[:danger] = 'Расписание не создано'
      render :new
      end
  end

  def edit

  end

  def update
    if @schedule.update_attributes(schedules_params)
      redirect_to @schedule, success: 'Группа успешно создана'
    else
      render 'edit', danger: 'Группа не обновлена'
    end
  end

  def destroy
    @schedule.destroy
    redirect_to schedules_path, success: 'Группа удалена'
  end

  private

  def set_schedules
    @schedule = Schedule.find(params[:id])
  end

  def schedules_params
    params.require(:schedule).permit(:day, :room, :group_id, :speciality_id, :lesson_id)
  end
end