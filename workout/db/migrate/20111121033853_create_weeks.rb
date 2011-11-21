class CreateWeeks < ActiveRecord::Migration
  def self.up
    create_table :weeks do |t|
      t.integer :user_id
      t.double :monday
      t.double :tuesday
      t.double :wednesday
      t.double :thursday
      t.double :friday
      t.double :saturday
      t.double :sunday
      t.timestamps
    end
  end

  def self.down
    drop_table :weeks
  end
end
