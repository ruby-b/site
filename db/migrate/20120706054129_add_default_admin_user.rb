class AddDefaultAdminUser < ActiveRecord::Migration
  def up
    Admin.create!(
      email: "info@ruby-b.com",
      password: "ruby0720kyou"
    )
  end

  def down
  end
end
