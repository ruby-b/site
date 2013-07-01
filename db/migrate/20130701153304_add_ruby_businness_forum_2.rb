# coding: utf-8
class AddRubyBusinnessForum2 < ActiveRecord::Migration
  def up
    Event.create(title: "第2回Rubyビジネスフォーラム", url: "ruby-business-forum02", entry_max: 200)
  end

  def down
  end
end
