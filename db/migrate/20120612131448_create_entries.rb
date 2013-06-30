class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :event
      t.string :name
      t.string :company
      t.string :division
      t.string :position
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
    add_index :entries, :event_id
  end
end
