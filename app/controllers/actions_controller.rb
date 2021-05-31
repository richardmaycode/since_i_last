class ActionsController < ApplicationController
  before_action :set_action, only: %i[show edit update destroy]
  def index
    @actions = Action.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:action).permit(:title, :icon, :last_execution, :show_icon)
  end
end
