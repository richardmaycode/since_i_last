class Events::FuturesController < ApplicationController
  def index
    @futures = Event.futures.all
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
end
