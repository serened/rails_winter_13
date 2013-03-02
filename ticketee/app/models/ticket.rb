class Ticket < ActiveRecord::Base
  belongs_to :project
  attr_accessible :title, :description, :asset
  validates :title, :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }
  belongs_to :user
  has_attached_file :asset
end
