class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def show
    @event = Employee.find(params[:id])
  end

  private
    def event_params
      params.require(:event).permit(:description, :date, :requires_id)
    end


end
