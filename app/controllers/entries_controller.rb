
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
    @entry = @event.entries.where(:id => params[:id]).first.decorate
  end

  def confirm
    I18n.locale = :ja
    @event = Event.where(:id => params[:forum_id]).first
    @entry = @event.entries.new(params[:entry]).decorate

    if @entry.valid?
      #redirect_to event_entry_path(@event.url, @entry)
    else
      render :action => :new
    end
  end

  def create
    I18n.locale = :ja
    @event = Event.where(:id => params[:forum_id]).first
    @entry = @event.entries.new(params[:entry]).decorate
    if @entry.save
      Notifier.entry_mail(@entry).deliver
      redirect_to forum_entry_path(@event.url, @entry)
    else
      render :action => :new
    end
  end

  private
  def set_event
    @event = Event.find_by_url(params[:forum_id])
  end
end
