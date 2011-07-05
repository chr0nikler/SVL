class Student < ActiveRecord::Base
  attr_accessible :name, :student_id, :email
  validates :name, :student_id, :presence => true
            
end
