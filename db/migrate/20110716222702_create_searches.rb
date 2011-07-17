class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.string :firstname
      t.string :lastname
      t.string :IDnumber
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end

  def self.down
    drop_table :searches
  end
end
