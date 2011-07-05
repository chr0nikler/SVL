class Services < ActiveRecord::Base
  attr_accessible :category, :hours, :organization, :contribution, :impact, 
	          :date
  validates :hours, :presence => true
  validates :dates, :presence => true
end
