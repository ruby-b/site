class AddManagerFlagToAdmins < ActiveRecord::Migration
  def change
    add_column :refinery_users, :manager_flag, :boolean, default: false

    Refinery::User.all.each do |u|
      u.manager_flag = false
      u.save!
    end
  end
end
