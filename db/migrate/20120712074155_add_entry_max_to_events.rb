class AddEntryMaxToEvents < ActiveRecord::Migration
  def change
    add_column :events, :entry_max, :integer, :default => 0
  end
end
