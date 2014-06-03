class AddRubyBussinessForum3 < ActiveRecord::Migration
  def up
    Event.create(title: "第3回Rubyビジネスフォーラム", url: "ruby-business-forum03", entry_max: 200)
  end

  def down
  end
end
