class CountdownsController < ApplicationController
  before_action :authenticate_person!
  before_action :set_countdown, only: %w[show edit update destroy]
  def index
    @countdowns = Countdown.all.order(:event_date)
  end

  def show
  end

  def new
    @countdown = Countdown.new
  end

  def create
    @countdown = Countdown.new(countdown_params)

    if @countdown.save
      redirect_to countdowns_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @countdown.update(countdown_params)
      redirect_to countdowns_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @countdown.delete

    redirect_to countdowns_path
  end

  private

  def set_countdown
    @countdown = Countdown.find(params[:id])
  end

  def countdown_params
    params.require(:countdown).permit(:title, :event_date)
  end
end
