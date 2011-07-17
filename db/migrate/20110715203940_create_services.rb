class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :dates
      t.string :organization
      t.integer :category
      t.string :contribution
      t.string :impact
      t.integer :hours

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
