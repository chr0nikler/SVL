class Student < ActiveRecord::Base
  attr_accessible :lastname, :firstname, :IDnumber, :graduationyear, :grade, :address1, :address2, :zip, :email1, :email2, :confirmed1, :confirmed2, :telephone1, :telephone2

  validates :lastname, :presence => true
  validates :firstname, :presence => true
  validates :IDnumber, :presence => true

  NULL_ATTRS = %w( firstname ), %w( lastname ), %w( IDnumber ), %w( graduationyear ), %w( grade ), %w( address1 ), %w( address2 ), %w(  city ), %w( zip) , %w( email1 ), %w( email2 ), %w( confirmed1 ), %w( confirmed2 ), %w( telephone1 ), %w( telephone2 )
  before_save :nil_if_blank

  protected

  def nil_if_blank
    NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
  end
end
