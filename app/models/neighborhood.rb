class Neighborhood < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :city }

  has_many :venues
  has_many :favorites, :through => :venues
end
