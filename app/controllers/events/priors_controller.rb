class Events::PriorsController < ApplicationController
  def index
    @priors = Event.priors.all
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

  def set_prior
    @event = Prior.find(params[:id]).event
  end

  def prior_params
    params.require(:event).permit(:title, :event)
  end
end
