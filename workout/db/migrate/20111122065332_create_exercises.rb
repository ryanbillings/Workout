class CreateExercises < ActiveRecord::Migration
  def self.up
    create_table :exercises do |t|
      t.string :muscle
      t.integer :duration
      t.string :name
      t.string :reps
      t.string :url
      t.text :description
      t.integer :day_id
      t.timestamps
    end
  Exercise.create :muscle => "Chest", :name => "Bench", :reps => "3x10", :duration => 15, :description => "Setup for the barbell bench press by setting the weight of the bar rack (if it's adjustable) and adding the weight plates you want to use. Lay down on your back with your feet firmly planted on the floor. Grasp the bar with an overhand grip (palms facing forward) with your hands at wider than shoulder width. Take the bar off the rack. Slowly lower the bar straight down to the middle of your chest. Don't let the bar touch your chest! Pause, then slowly raise the bar back up. Do not lock your elbows out or rest at the top, go straight back into your next rep. Repeat this process for your desire reps."

  Exercise.create :muscle => "Bicep", :name => "Curl", :reps => "3x10", :duration => 15, :description => "With elbows to sides, raise one dumbbell and rotate forearm until forearm is vertical and palm faces shoulder. Lower to original position and repeat with opposite arm. Continue to alternate between sides."
  Exercise.create :muscle => "Tricep", :name => "Tricep Extension", :reps => "3x10", :duration => 15, :description => "With elbows overhead, lower forearm behind upper arm by flexing elbows. Flex wrists at bottom to avoid hitting dumbbell on back of neck. Raise dumbbell overhead by extending elbows while hyperextending wrists. Return and repeat."
  
  Exercise.create :muscle => "Back", :name => "Cable Row", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Shoulder", :name => "Pullup", :reps => "20", :duration => 15
  Exercise.create :muscle => "Tricep", :name => "Dip", :reps => "3x10", :duration => 15

  Exercise.create :muscle => "Chest", :name => "Fly", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Chest", :name => "Pushup", :reps => "50", :duration => 5
  Exercise.create :muscle => "Bicep", :name => "Hammer curl", :reps => "3x10", :duration => 15

  Exercise.create :muscle => "Bicep", :name => "Cable curl", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Tricep", :name => "Skull Crush", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Back", :name => "Bent Over Row", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Chest", :name => "Incline Bench", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Chest", :name => "Decline Bench", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Shoulder", :name => "Shoulder Press", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Shoulder", :name => "Front Raise", :reps => "3x10", :duration => 15
  Exercise.create :muscle => "Shoulder", :name => "Lateral Raise", :reps => "3x10", :duration => 15

  Exercise.create :muscle => "Back", :name => "Lateral Pulldown", :reps => "3x10", :duration => 15, :description => ""
  Exercise.create :muscle => "Bicep", :name => "Seated Curl", :reps => "3x10", :duration => 15, :description => ""
  
  
  Exercise.create :muscle => "Hamstring", :name => "Deadlift", :reps => "3x10", :duration => 15, :description => ""
  Exercise.create :muscle => "Gluteal", :name => "Squats", :reps => "3x10", :duration => 15, :description => ""
  Exercise.create :muscle => "Quadricep", :name => "Lunges", :reps => "3x10", :duration => 15, :description => ""
  Exercise.create :muscle => "Quadricep", :name => "Leg Extension", :reps => "3x10", :duration => 15, :description => ""
  Exercise.create :muscle => "Gluteal", :name => "Leg Press", :reps => "3x10", :duration => 15, :description => ""
  Exercise.create :muscle => "Hamstring", :name => "Wall Squat", :reps => "", :duration => 10, :description => ""
  Exercise.create :muscle => "Calves", :name => "Calf Raise", :reps => "3x40", :duration => 15, :description => ""
  Exercise.create :muscle => "Calves", :name => "Calf Raise", :reps => "3x40", :duration => 15, :description => ""
  Exercise.create :muscle => "Calves", :name => "Calf Press", :reps => "3x40", :duration => 15, :description => ""

  Exercise.create :muscle => "Hamstring", :name => "Lying Leg Curl", :reps => "3x10", :duration => 10, :description => ""
  Exercise.create :muscle => "Quadricep", :name => "Stair step", :reps => "", :duration => 10, :description => ""
  Exercise.create :muscle => "Quadricep", :name => "One leg squat", :reps => "3x10", :duration => 10, :description => ""
  Exercise.create :muscle => "Hips", :name => "Hip Abductors", :reps => "", :duration => 10, :description => ""
  Exercise.create :muscle => "Hamstring", :name => "Stiff leg deadlift", :reps => "", :duration => 10, :description => ""
  Exercise.create :muscle => "Hips", :name => "Side bridge hip abduction", :reps => "", :duration => 10, :description => ""

  Exercise.create :muscle => "Abdominal", :name => "Crunch", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Abdominal", :name => "Sit up", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Abdominal", :name => "Leg Raise", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Obliques", :name => "Twists", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Obliques", :name => "Side Bend", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Lower Back", :name => "Plank", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Lower Back", :name => "Back extension", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Abdominal", :name => "Bicycle", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Abdominal", :name => "Reverse Crunch", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Obliques", :name => "Crossover Crunch", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Abdominal", :name => "Balance ball crunch", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Abdominal", :name => "Decline sit up", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Lower back", :name => "Reverse plank", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Obliques", :name => "Woodchop", :reps => "3x25", :duration => 10, :description => ""
  Exercise.create :muscle => "Abdominal", :name => "JackKnife", :reps => "3x25", :duration => 10, :description => ""
  end

  def self.down
    drop_table :exercises
  end
end
