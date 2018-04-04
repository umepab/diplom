class FacultiesController < ApplicationController

  def index
    @faculties = Faculty.all
  end

  def new
    @faculty = Faculty.new
  end

  def create
    @faculty = Faculty.new(faculty_params)
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
    if @faculty.update_attributes(faculty_params)
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

  def set_group
    @faculty = Group.find(params[:id])
  end

  def faculty_params
    params.require(:fuculty).permit(:title)
  end
end