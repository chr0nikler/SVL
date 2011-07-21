class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :lastname
      t.string :firstname
      t.string :IDnumber
      t.string :graduationyear
      t.string :grade
      t.string :address1
      t.string :address2
      t.string :zip
      t.string :email1
      t.string :email2
      t.boolean :confirmed1
      t.boolean :confirmed2
      t.string :telephone1
      t.string :telephone2

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
