class Events::PriorsController < ApplicationController
  before_action :set_event, only: %w[show edit update destroy]

  def index
    @priors = Event.priors.all
  end

  def show
  end

  def new
    @event = Event.new(eventable: Prior.new)
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to [:events, :priors]
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_prior
    @event = Prior.find(params[:id]).event
  end

  def event_params
    params.require(:event).permit(:title, :date, :eventable)
  end
end
