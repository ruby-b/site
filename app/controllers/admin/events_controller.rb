class Admin::EventsController < Admin::BaseController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @entries = EntryDecorator.decorate_collection(@event.entries.page(1))
    @total_entries = @event.entries.count
  end
end
