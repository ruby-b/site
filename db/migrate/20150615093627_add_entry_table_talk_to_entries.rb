class AddEntryTableTalkToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :entry_table_talk, :boolean
  end
end
