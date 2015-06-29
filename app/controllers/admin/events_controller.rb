class Admin::EventsController < Admin::BaseController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @entries = @event.entries.page(1).decorate
    @total_entries = @event.entries.count
  end
end
