class Entry < ActiveRecord::Base
  belongs_to :event
  attr_accessible :address, :company, :division, :email, :name, :phone, :position, :entry_type, :intermediary

  validates_presence_of :name, :company, :address, :phone, :email

  extend Enumerize
  enumerize :entry_type, in: [:seminar, :full]

  PER_PAGE = 10
  PER_PAGE_MORE = PER_PAGE * 3
  paginates_per PER_PAGE

  default_scope order("updated_at DESC")
end
