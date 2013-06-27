class Event < ActiveRecord::Base
  has_many :entries
  attr_accessible :title, :url

  default_scope order("created_at DESC")

  def entry_max?
    self.entries.count >= self.entry_max
  end
end
