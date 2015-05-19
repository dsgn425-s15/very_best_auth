class Cuisine < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
end
