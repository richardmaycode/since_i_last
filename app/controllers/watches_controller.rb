class WatchesController < ApplicationController
  before_action :set_watch, only: %w[show edit update destroy]
  def index
    @watches = Watch.all
  end

  def show
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.create(watch_params)

    if @watch.save
      redirect_to watches_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @watch.update(watch_params)
      redirect_to watches_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @watch.destroy

    redirect_to watches_path
  end

  private

  def set_watch
    @watch = Watch.find(params[:id])
  end

  def watch_params
    params.require(:watch).permit(:title, :executed, :goal, :goal_type)
  end
end
