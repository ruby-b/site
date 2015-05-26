# coding: utf-8

require 'csv'
require 'kconv'

class Admin::EntriesController < Admin::BaseController
  before_filter :set_event

  def index
    @entries = @event.entries.page(params[:page])
  end

  def show
  end

  def edit
    @entry = @event.entries.find(params[:id])
  end

  def update
    @entry = @event.entries.find(params[:id])


    if @entry.update_attributes(params[:entry])
      redirect_to admin_forum_entries_path(:forum_id => @event.id), :notice => "申込情報を更新しました"
    else
      render :edit
    end

  end

  def destroy
    @entry = @event.entries.find(params[:id])

    @entry.destroy
    @total_count = @event.entries.count

    respond_to do |format|
      format.js { render :content_type => 'text/javascript' }
    end
  end

  def csv
    @entries = @event.entries.all
    filename = "#{@event.url}_entries_#{Date.today.strftime('%Y-%m-%d')}"
    csv_str =  CSV.generate do |csv|
      csv << ["ID", "name", "company", "division", "position", "address", "phone", "email", "entry_type", "intermediary"]

      @entries.each do |e|
        csv << [e.id, e.name, e.company, e.division, e.position, e.address, e.phone, e.email, e.entry_type_text, e.intermediary]
      end
    end

    send_data csv_str.tosjis,
      :type => 'text/csv',
      :disposition => "attachment; filename=#{filename}.csv"
  end

  private
  def set_event
    @event = Event.find(params[:forum_id])
  end
end
