
class EntriesController < ApplicationController
  before_filter :set_event, :only => [:new, :show]

  def new
    if @event.entry_max?
      render :template => "entries/thanks"
      return
    end
    @entry = @event.entries.new
  end

  def show
    @entry = @event.entries.where(:id => params[:id]).first
  end

  def confirm
    @event = Event.where(:id => params[:event_id]).first
    @entry = @event.entries.new(params[:entry])

    if @entry.valid?
      #redirect_to event_entry_path(@event.url, @entry)
    else
      render :action => :new
    end
  end

  def create
    @event = Event.where(:id => params[:event_id]).first
    @entry = @event.entries.new(params[:entry])

    if @entry.save
      Notifier.entry_mail(@entry).deliver
      redirect_to event_entry_path(@event.url, @entry)
    else
      render :action => :new
    end
  end

  private
  def set_event
    @event = Event.find_by_url(params[:event_id])
  end
end
