class EventController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new()
    if @event.save
      redirect_to event_path(@event.id)
    else
      flash.now[:danger] = "L'évenement n'a pas pu être créé !"
      render :new
    end
  end
end
