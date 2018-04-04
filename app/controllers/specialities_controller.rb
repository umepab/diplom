class SpecialitiesController < ApplicationController
  before_action :set_spec, only: [ :show, :edit, :update, :destroy]

  def index
    @specialities = Speciality.all
  end

  def new
    @speciality = Speciality.new
  end

  def create
    @speciality = Speciality.new(spec_params)
    if @speciality.save
      redirect_to specialities_path, success: 'Группа успешно создана'
    else
      flash[:danger] = 'Группа не создана'
      render :new
    end
  end

  def edit

  end

  def update
    if @speciality.update_attributes(spec_params)
      redirect_to @speciality, success: 'Группа успешно создана'
    else
      render 'edit', danger: 'Группа не обновлена'
    end
  end

  def destroy
    @speciality.destroy
    redirect_to specialities_path, success: 'Группа удалена'
  end

  private

  def set_spec
    @speciality = Speciality.find(params[:id])
  end

  def spec_params
    params.require(:speciality).permit(:name)
  end
end