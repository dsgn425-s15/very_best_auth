class Venue < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :address }
end
