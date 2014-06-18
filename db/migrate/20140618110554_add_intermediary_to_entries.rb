class AddIntermediaryToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :intermediary, :string
  end
end
