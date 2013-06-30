class SetEntryMaxToForum1 < ActiveRecord::Migration
  def up
    event = Event.where(:url => "ruby-business-forum-1").first
    if event.present?
      event.entry_max = 200
      event.save!
    end
  end

  def down
  end
end
