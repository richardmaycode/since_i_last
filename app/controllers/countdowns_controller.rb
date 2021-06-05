class CountdownsController < ApplicationController
  def index
    @countdowns = Countdown.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
