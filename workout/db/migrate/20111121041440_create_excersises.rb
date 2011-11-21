class CreateExcersises < ActiveRecord::Migration
  def self.up
    create_table :excersises do |t|
      t.integer :day_id
      t.string :muscle
      t.string :repitions
      t.float :duration
      t.timestamps
    end
  end

  def self.down
    drop_table :excersises
  end
end
