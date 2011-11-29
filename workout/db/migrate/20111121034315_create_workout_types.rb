class CreateWorkoutTypes < ActiveRecord::Migration
  def self.up
    create_table :workout_types do |t|
      t.integer :plan_id
      t.string :name
      t.integer :priority
      t.integer :min_time
      t.timestamps
    end
  end

  def self.down
    drop_table :workout_types
  end
end
