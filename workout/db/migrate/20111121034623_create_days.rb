class CreateDays < ActiveRecord::Migration
  def self.up
    create_table :days do |t|
      t.integer :plan_id
      t.date :date
      t.double :duration
      t.boolean :complete
      t.timestamps
    end
  end

  def self.down
    drop_table :days
  end
end
