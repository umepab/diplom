class FacultiesController < ApplicationController
  before_action :set_faculties, only: [ :edit, :update, :destroy]

  def index
    @faculties = Faculty.all
  end


  def new
    @faculty = Faculty.new
  end

  def create
    @faculty = Faculty.new(faculties_params)
    if @faculty.save
      redirect_to faculties_path, success: 'Группа успешно создана'
    else
      flash[:danger] = 'Группа не создана'
      render :new
    end
  end

  def edit

  end

  def update
    if @faculty.update_attributes(faculies_params)
      redirect_to @faculty, success: 'Группа успешно создана'
    else
      render 'edit', danger: 'Группа не обновлена'
    end
  end

  def destroy
    @faculty.destroy
    redirect_to faculties_path, success: 'Группа удалена'
  end

  private

  def set_faculties
    @faculty = Faculty.find(params[:id])
  end

  def faculties_params
    params.require(:faculty).permit(:title, :group_id)
  end
end