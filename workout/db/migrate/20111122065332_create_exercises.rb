class CreateExercises < ActiveRecord::Migration
  def self.up
    create_table :exercises do |t|
      t.string :muscle
      t.integer :duration
      t.string :name
      t.string :reps
      t.integer :day_id
      t.timestamps
    end
  Exercise.create :muscle => "Chest", :name => "Bench", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Bicep", :name => "Curl", :reps => "3x10", :duration => 15

  end

  def self.down
    drop_table :exercises
  end
end
