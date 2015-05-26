class AddEntryTypeForEntries < ActiveRecord::Migration
  def up
    add_column :entries, :entry_type, :string
  end

  def down
    remove_column :entries, :entry_type
  end
end
