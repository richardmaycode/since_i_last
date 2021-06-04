class Events::FuturesController < ApplicationController
  before_action :set_event, only: %w[show edit update destroy]

  def index
    @futures = Event.futures.all
  end

  def show
  end

  def new
    @event = Event.new(eventable: Future.new)
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

  def set_event
    @event = Future.find(params[:id]).event
  end
end
