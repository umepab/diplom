class GroupsController < ApplicationController

  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
  end

  def show

  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path, success: 'Группа успешно создана'
    else
      flash[:danger] = 'Группа не создана'
      render :new
    end
  end

  def edit

  end

  def update
    if @group.update_attributes(group_params)
      redirect_to @group, success: 'Группа успешно создана'
    else
      render 'edit', danger: 'Группа не обновлена'
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_path, success: 'Группа удалена'
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end