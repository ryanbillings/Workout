class CreateWeeks < ActiveRecord::Migration
  def self.up
    create_table :weeks do |t|
      t.integer :user_id
      t.float :monday
      t.float :tuesday
      t.float :wednesday
      t.float :thursday
      t.float :friday
      t.float :saturday
      t.float :sunday
      t.timestamps
    end
  end

  def self.down
    drop_table :weeks
  end
end
