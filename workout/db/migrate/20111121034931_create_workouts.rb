class CreateWorkouts < ActiveRecord::Migration
  def self.up
    create_table :workouts do |t|
      t.integer :day_id
      t.string :name
      t.string :muscle
      t.string :reps
      t.float :duration
      t.timestamps
    end
  end

  def self.down
    drop_table :workouts
  end
end
