class Ticket < ActiveRecord::Base
  belongs_to :project
  attr_accessible :title, :description, :assets_attributes
  validates :title, :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }
  belongs_to :user
  has_many :assets
  accepts_nested_attributes_for :assets
end
