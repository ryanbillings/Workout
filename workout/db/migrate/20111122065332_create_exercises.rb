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
      t.integer :gym
      t.boolean :core
      t.timestamps
    end

Exercise.create :muscle => "Chest", :name => "Bench", :reps => "3x10", :duration => 15, :gym => 1, 
:core => true, :description => "Setup for the barbell bench press by setting the weight of the bar rack (if it's adjustable) and adding the weight plates you want to use. Lay down on your back with your feet firmly planted on the floor. Grasp the bar with an overhand grip (palms facing forward) with your hands at wider than shoulder width. Take the bar off the rack. Slowly lower the bar straight down to the middle of your chest. Don't let the bar touch your chest! Pause, then slowly raise the bar back up. Do not lock your elbows out or rest at the top, go straight back into your next rep. Repeat this process for your desire reps.", :url => "6JtP6ju0IMw"
  
Exercise.create :muscle => "Bicep", :name => "Curl", :reps => "3x10", :duration => 15, :gym => 0, :core => false, :description => "With elbows to sides, raise one dumbbell and rotate forearm until forearm is vertical and palm faces shoulder. Lower to original position and repeat with opposite arm. Continue to alternate between sides.", :url => "jZrxHTSGV84"

Exercise.create :muscle => "Tricep", :name => "Tricep Extension", :reps => "3x10", :duration => 15, :gym => 0, :core => false, :description => "With elbows overhead, lower forearm behind upper arm by flexing elbows. Flex wrists at bottom to avoid hitting dumbbell on back of neck. Raise dumbbell overhead by extending elbows while hyperextending wrists. Return and repeat.", :url => "50U0VJGXPSE"

Exercise.create :muscle => "Chest", :name => "Dumbbell Press", :reps => "3x10", :duration => 15, :gym => 0, :core => true, :description => "Sit down on bench with dumbbells resting on lower thigh. Kick weights to shoulder and lie back. Position dumbbells to sides of chest with bent arm under each dumbbell. Press dumbbells up with elbows to sides until arms are extended. Lower weight to sides of upper chest until slight stretch is felt in chest or shoulder. Repeat.", :url => "pFcU-d5uDmM"

Exercise.create :muscle => "Back", :name => "Cable Row", :reps => "3x10", :duration => 15, :gym => 1, :core => false, :description => "Sit slightly forward on seat or bench and grasp cable attachment. Place feet on vertical platform. Slide hips back positioning knees with slight bend. Pull cable attachment to waist while straightening lower back. Pull shoulders back and push chest forward while arching back. Return until arms are extended, shoulders are stretched forward, and lower back is flexed forward. Repeat.", :url => "MS3r0mqcqcc"

Exercise.create :muscle => "Shoulder", :name => "Pullup", :reps => "20", :duration => 15, :gym => 0, :core => true, :description => "Standard dead-hang pull up is grasped with an overhand/underhand/alternative-hand grip. Then the body is pulled up until the chin clears the bar, and finished by lowering the body until arms and shoulders are fully extended. Stricter standards would only consider a full repetition to be one in which the elbows pass behind the coronal plane.", :url => "26Nc50J3ksE"

Exercise.create :muscle => "Tricep", :name => "Dip", :reps => "3x10", :duration => 15, :gym => 0, :core => true, :description => "You can perform dips by grasping two parallel bars that are approximately shoulder-width apart. Raise yourself up to an initial position with your arms extended and supporting the entire weight of your body. Next, lower yourself to a final position where your elbows are bent and your shoulders are mildly stretched and then use your arms to push yourself upwards to the initial position.", :url => "vzQ9rMwOd4E"

Exercise.create :muscle => "Chest", :name => "Fly", :reps => "3x10", :duration => 15, :gym => 1, :core => false, :description => "Grasp two opposing high pulley dumbbell attachments. Stand with pulleys to each side. Bend over slightly by flexing hips and knees. Bend elbows slightly and internally rotate shoulders so elbows are back initially. Bring cable attachments together in hugging motion with elbows in fixed position. Keep shoulders internally rotated so elbows are pointed upward at top and out to sides at bottom. Return to starting position until chest muscles are stretched. Repeat.", :url => "A_uwDymTVwY"

Exercise.create :muscle => "Chest", :name => "Pushup", :reps => "50", :duration => 5, :gym => 0, :core => false, :description => "Place your toes and hands on the floor, making sure your back and arms are straight. Keep your hands slightly more than shoulder-width apart and tighten your abdominal muscles. Inhale as you lower yourself to the floor, stopping as your elbows reach a 90-degree bend. Keep your body from touching the floor. Exhale and push yourself away from the floor. Don't lock your elbows, and don't bend your back.", :url => "zF0jbubK_jU"

Exercise.create :muscle => "Bicep", :name => "Hammer curl", :reps => "3x10", :duration => 15, :gym => 0, :core => false, :description => "Position two dumbbells to sides, palms facing in, arms straight. With elbows to sides, raise one dumbbell until forearm is vertical and thumb faces shoulder. Lower to original position and repeat with alternative arm.", :url => "IOOU5yChBhk"

Exercise.create :muscle => "Bicep", :name => "Cable curl", :reps => "3x10", :duration => 15, :gym => 1, :core => false, :description => "Grasp low pulley cable bar with shoulder width under hand grip. Stand close to pulley. With elbows to side, raise bar until forearms are vertical. Lower until arms are fully extended. Repeat.", :url => "kyyP5l8noSY"

Exercise.create :muscle => "Tricep", :name => "Skull Crush", :reps => "3x10", :duration => 15, :gym => 0, :core => false, :description => "Lie on bench with narrow overhand grip on barbell. Position barbell over shoulders with arms extended. Lower bar to forehead by bending elbows. Extend arms and repeat.", :url => "VcKe6OVJFF4"

Exercise.create :muscle => "Back", :name => "Bent Over Row", :reps => "3x10", :duration => 15, :gym => 1, :core => true, :description => "Bend knees slightly and bend over bar with back straight. Grasp bar with wide overhand grip. Pull bar to upper waist. Return until arms are extended and shoulders are stretched downward. Repeat.", :url => "7stpwE5nZj8"

Exercise.create :muscle => "Chest", :name => "Incline Bench", :reps => "3x10", :duration => 15, :gym => 1, :core => true, :description => "Lie supine on incline bench. Dismount barbell from rack over upper chest using wide oblique overhand grip. Lower weight to upper chest. Press bar until arms are extended. Repeat.", :url => "BW6J7A07ve0"

Exercise.create :muscle => "Chest", :name => "Decline Bench", :reps => "3x10", :duration => 15, :gym => 1, :core => true, :description => "Lie supine on decline bench with feet under leg brace. Dismount barbell from rack over chest using wide oblique overhand grip. Lower weight to upper chest. Press bar until arms are extended. Repeat.", :url => "OR6WM5Z2Hqs"

Exercise.create :muscle => "Shoulder", :name => "Shoulder Press", :reps => "3x10", :duration => 15, :gym => 0, :core => true, :description => "Position dumbbells to each side of shoulders with elbows below wrists. Press dumbbells upward until arms are extended overhead. Lower to sides of shoulders and repeat.", :url => "nKM543kq9Vw"

Exercise.create :muscle => "Shoulder", :name => "Front Raise", :reps => "3x10", :duration => 15, :gym => 0, :core => false, :description => "Grasp dumbbells in both hands. Position dumbbells in front of upper legs with elbows straight or slightly bent. Raise dumbbells forward and upward with until upper arms are above horizontal. Lower and repeat.", :url => "2ZS1Ae5n90M"

Exercise.create :muscle => "Shoulder", :name => "Lateral Raise", :reps => "3x10", :duration => 15, :gym => 0, :core => false, :description => "Grasp dumbbells in front of thighs with elbows slightly bent. Bend over slightly with hips and knees bent slightly. Raise upper arms to sides until elbows are shoulder height. Maintain elbows' height above or equal to wrists. Lower and repeat.", :url => "_1uZD-I3qw8"

Exercise.create :muscle => "Back", :name => "Lateral Pulldown", :reps => "3x10", :duration => 15, :gym => 1, :core => true, :description => "Grasp cable bar with wide grip. Sit with thighs under supports. Pull down cable bar to upper chest. Return until arms and shoulders are fully extended. Repeat.", :url => "77Bqpyx31pQ"

Exercise.create :muscle => "Bicep", :name => "Seated Curl", :reps => "3x10", :duration => 15, :gym => 0, :core => false, :description => "Hold one dumbbell in one hand with your palm facing up. Place elbow on the inside of your leg just above the knee. Extend arm downward toward the floor. Curl the arm upwards, keeping elbow on your leg. Hold one second.Extend arm to starting position", :url => "jZrxHTSGV84"

Exercise.create :muscle => "Hamstring", :name => "Deadlift", :reps => "3x10", :duration => 15, :gym => 1, :core => true, :description => "With feet flat beneath bar, squat down and grasp bar with shoulder width or slightly wider over hand or mixed grip. Lift bar by extending hips and knees to full extension. Pull shoulders back at top of lift if rounded. Return and repeat.Target muscle is exercised isometrically. Throughout lift keep hips low, shoulders high, arms and back straight. Knees should point same direction as feet throughout movement. Keep bar close to body to improve mechanical leverage. Grip strength and strength endurance often limits ability to perform multiple reps at heavy resistances. Gym chalk, wrist straps, grip work, and mixed grip can be used to enhance grip. Mixed grip indicates one hand holding with over hand grip and other hand holding with underhand grip.", :url => "7xwJzLQTKYQ"

Exercise.create :muscle => "Gluteal", :name => "Squats", :reps => "3x10", :duration => 15, :gym => 1, :core => true, :description => "From rack with barbell at upper chest height, position bar high on back of shoulders and grasp barbell to sides. Dismount bar from rack and stand with shoulder width stance. Bend knees forward while allowing hips to bend back behind, keeping back straight and knees pointed same direction as feet. Descend until thighs are just past parallel to floor. Extend knees and hips until legs are straight. Return and repeat.", :url => "ZcBVwoiPz2A"

Exercise.create :muscle => "Quadricep", :name => "Lunges", :reps => "3x10", :duration => 15, :gym => 0, :core => true, :description => "Stand with dumbbells grasped to sides.Lunge forward with first leg. Land on heel then forefoot. Lower body by flexing knee and hip of front leg until knee of rear leg is almost in contact with floor. Return to original standing position by forcibly extending hip and knee of forward leg. Repeat by alternating lunge with opposite leg.", :url => "AftaVRDdat0"

Exercise.create :muscle => "Quadricep", :name => "Leg Extension", :reps => "3x10", :duration => 15, :gym => 1, :core => false, :description => "Sit on apparatus with back against padded back support. Place front of lower legs under padded lever. Position knee articulation at same axis as lever fulcrum. Grasp handles to sides for support. Move lever forward and upward by extending knees until leg are straight. Return lever to original position by bending knees. Repeat.", :url => "OjRjyvnLTgU"

Exercise.create :muscle => "Gluteal", :name => "Leg Press", :reps => "3x10", :duration => 15, :gym => 1, :core => true, :description => "Sit on machine with back on padded support. Place feet on platform. Extend hips and knees. Release dock lever and grasp handles to sides. Lower sled by flexing hips and knees until knees are just short of complete flexion. Return by extending knees and hips. Repeat.", :url => "Aq5uxXrXq7c"

Exercise.create :muscle => "Hamstring", :name => "Wall Squat", :reps => "3x20", :duration => 10, :gym => 0, :core => false, :description => "Lean with your back against the wall and your feet about two feet away. Your feet should be flat on the floor and about shoulder width apart. Bend your knees slightly and hold for 10 seconds. Bend deeper and hold 10 seconds. Continue until you've hit five different positions, the last position as low as you can go. ", :url => "RHzaHZDBsag"

Exercise.create :muscle => "Calves", :name => "Calf Raise", :reps => "3x40", :duration => 15, :gym => 0, :core => true, :description => "Grasp dumbbell in one hand to side. Position toes and balls of feet on calf block with arches and heels extending off. Place hand on support for balance. Lift other leg to rear by bending knee. Raise heel by extending ankle as high as possible. Lower heel by bending ankle until calf is stretched. Repeat. Continue with opposite leg.", :url => "VdGuHOh7vE8"

Exercise.create :muscle => "Calves", :name => "Calf Press", :reps => "3x40", :duration => 15, :gym => 1, :core => true, :description => "Sit on seat and position forefeet on horizontal foot bar. Grasp handles to sides and straighten knees.Push lever by extending ankles as far as possible. Return by bending ankles until calves are stretched. Repeat.", :url => "W-NU8NUS8lI"

Exercise.create :muscle => "Hamstring", :name => "Lying Leg Curl", :reps => "3x10", :duration => 10, :gym => 1, :core => false, :description => "Facing bench, stand between bench and lever pads. Lie prone on bench with knees just beyond edge of bench and lower legs under lever pads. Grasp handles. Raise lever pad to back of thighs by flexing knees. Lower lever pads until knees are straight. Repeat.", :url => "3h6lab4GusU"

Exercise.create :muscle => "Quadricep", :name => "Stair step", :reps => "As many as possible", :duration => 10, :gym => 0, :core => false, :description => "Self Explanatory", :url => "kjgryWewmEQ"

Exercise.create :muscle => "Quadricep", :name => "One leg squat", :reps => "3x10", :duration => 10, :gym => 0, :core => true, :description => "Stand on a bench or box that's about knee height. Hold your arms in front of you and flex your right ankle so your toes are higher than your heel. Keeping your torso as upright as possible, bend your left knee and slowly lower your body until your right heel lightly touches the floor. Pause for 1 second, then push yourself up. That's one repetition.", :url => "_pagSm57Mqw"

Exercise.create :muscle => "Hips", :name => "Hip Abductors", :reps => "5x30", :duration => 10, :gym => 1, :core => false, :description => "Sit in machine with legs inside of side pads. If available, place heels on foot bars. Release and pull lever brace to position legs together. Engage lever into locked position. Lie back and grasp bars to sides.Move legs appart as far as possible. Return and repeat.", :url => "zlqBk6xFO_8"

Exercise.create :muscle => "Hamstring", :name => "Stiff leg deadlift", :reps => "3x10", :duration => 10, :gym => 1, :core => true, :description => "Stand with shoulder width or narrower stance on shallow platform with feet flat beneath bar. Bend knees and bend over with lower back straight. Grasp barbell with shoulder width overhand or mixed grip, shoulder width or slightly wider. Lift weight to standing position. Lower bar to top of feet by bending hips. Bend knees slightly during descent and keep waist straight, flexing only slightly at bottom. With knees bent, lift bar by extending at hips until standing upright. Pull shoulders back slightly if rounded. Extend knees at top if desired. Repeat.", :url => "wOHVz6Sy_kQ"

Exercise.create :muscle => "Hips", :name => "Side bridge hip abduction", :reps => "3x30", :duration => 10, :gym => 0, :core => false, :description => "Lie on side with legs straight, one leg on top of the other. Place forearm under shoulder perpendicular to body. Keeping side of bottom foot on ground, raise hips up off ground while raising upper leg upward away from lower leg. Return to original position and repeat. Continue with opposite leg.", :url => "FRnjaJHRpqg"

Exercise.create :muscle => "Abdominal", :name => "Crunch", :reps => "3x30", :duration => 10, :gym => 0, :core => false, :description => "Lie supine on bench with head hanging off and knees and hips bent. Flex waist to raise upper torso from bench. Keep low back on bench and raise torso up as high as possible. Return until back of shoulders contact padded incline board. Repeat.", :url => "oADJa1vgdZQ"

Exercise.create :muscle => "Abdominal", :name => "Sit up", :reps => "3x25", :duration => 15, :gym => 0, :core => false, :description => "Hook feet under foot brace and lie supine on incline board with hips bent. Raise torso from bench by bending waist and hips. Return until back of shoulders contact padded incline board. Repeat.", :url => "j8n9th6TPI0"

Exercise.create :muscle => "Abdominal", :name => "Leg Raise", :reps => "3x15", :duration => 10, :gym => 0, :core => false, :description => "Place weight between ankles or use no weight. Grasp and hang from high bar. Raise legs by flexing hips and knees until hips are fully flexed. Continue to raise knees toward shoulders by flexing waist. Return until waist, hips, and knees are extended. Repeat.", :url => "wr4-McBOJCg"

Exercise.create :muscle => "Obliques", :name => "Twists", :reps => "3x35", :duration => 10, :gym => 0, :core => true, :description => "To perform the Russian Twist, first, one should sit on the floor with knees bent like in a \"sit-up\" position. The feet should be kept together and slightly above the ground or put under a stable surface. The torso should be kept straight with the back kept off the ground at a 45 degree angle. Arms should be held together away from the body in a straight fashion and hands kept locked together like a ball or one can hold a weight to increase the difficulty. Next, the arms should be moved from one side to another in a twisting motion, with each swing to a side counting as one repetition. The slower one moves their arms from side to side, the harder the exercise becomes and the abdomen is thus worked better. When moving your arms during the exercise, it is crucial to not stop in between repetitions or else you will lose the effect of working the abdomen. Constant breathing in and out during the exercise is important as one should not hold his/her breath.", :url => "1ev6BZHJz_4"

Exercise.create :muscle => "Obliques", :name => "Side Bend", :reps => "3x25", :duration => 10, :gym => 0, :core => false, :description => "Grasp dumbbell with arm straight to side. Bend waist to opposite side of dumbbell until slight stretch is felt. Lower to opposite side same distance and repeat. Continue with opposite side.", :url => "7MvcSEQKCno"

Exercise.create :muscle => "Lower Back", :name => "Plank", :reps => "1", :duration => 5, :gym => 0, :core => true, :description => "Lie face down on mat resting on the forearms, palms flat on the floor. Push off the floor, raising up onto toes and resting on the elbows. Keep your back flat, in a straight line from head to heels. Tilt your pelvis and contract your abdominals to prevent your rear end from sticking up in the air or sagging in the middle. Hold for 20 to 60 seconds.", :url => "77paaP2Iixc"

Exercise.create :muscle => "Lower Back", :name => "Back extension", :reps => "3x20", :duration => 10, :gym => 0, :core => true, :description => "Position thighs prone on large pad and lower legs under padded brace. Lower body by bending waist until fully flexed. Raise, or extend waist until torso is parallel to legs. Repeat.", :url => "9X88_WSk5-0"

Exercise.create :muscle => "Abdominal", :name => "Bicycle", :reps => "3x25", :duration => 10, :gym => 0, :core => false, :description => "Lie supine on floor or bench with knees and hips bent. Flex and twist waist to raise upper torso off surface to one side. Return until back of shoulders return to surface. Repeat to opposite side alternating twists.", :url => "ixQGJ3Ja-2I"

Exercise.create :muscle => "Abdominal", :name => "Reverse Crunch", :reps => "2x20", :duration => 5, :gym => 1, :core => false, :description => "Sit on incline board. Place weight between ankles or use no weight. Lie supine on incline board with torso elevated. Grasp feet hooks or sides of board by head for support. Raise legs by flexing hips while flexing knees until hips are fully flexed. Continue to raise knees toward shoulders by flexing waist, raising hips from board. Return until waist, hips and knees are extended. Repeat.", :url => "vVVlXA0dqGg"

Exercise.create :muscle => "Obliques", :name => "Crossover Crunch", :reps => "3x25", :duration => 10, :gym => 0, :core => false, :description => "Lie on your back with your knees bent and feet flat on the floor. Cross your right leg over your left leg so your right ankle is resting on your left knee. Place your fingertips to the side of your head just behind your ears. Contract your abdominal muscles as though you are doing a crunch. Slowly twist your torso and touch your left elbow to your right knee. Exhale as you lift up. Slowly lower to the starting position. Inhale as you lower. Repeat for the desired number of repetitions and switch legs and do the same number of reps on the other side.", :url => "Yok_ArE6MxI"

Exercise.create :muscle => "Abdominal", :name => "Balance ball crunch", :reps => "3x25", :duration => 15, :gym => 1, :core => false, :description => "Sit on exercise ball. Walk forward on ball and lie back on ball with shoulders and head hanging off and knees and hips bent. Gently hyperextend back to contour of ball. Flex waist to raise upper torso. Return to original position. Repeat.", :url => "M7a_UQdax5o"

Exercise.create :muscle => "Abdominal", :name => "Decline sit up", :reps => "3x25", :duration => 15, :gym => 1, :core => false, :description => "Sit on apparatus with lower leg secured under padded bar. Lower body back until hips are almost extended. Raise body by flexing hips until torso is upright. Repeat.", :url => "mx-KvqsnSCM"

Exercise.create :muscle => "Lower back", :name => "Reverse plank", :reps => "1", :duration => 5, :gym => 0, :core => true, :description => "Sit with palms on ground, below shoulders. Squeezing butt and thighs. Push up into a reverse plank (on either elbows or straight arms). Hold for 30 seconds and work up to 1-3 minutes. Keep body in straight line- don't let hips raise or lower. Be sure not to hold breath.", :url => "HVTlVvSlLl0"

Exercise.create :muscle => "Obliques", :name => "Woodchop", :reps => "3x15", :duration => 17, :gym => 1, :core => false, :description => "Grasp stirrup from shoulder height cable pulley with both hands. Step and turn lower body away from pulley until near arm is horizontal and straight. Position feet wide apart facing away from pulley, furthest foot further away from pulley. Raise heel of nearest foot off floor. Bend knees of both legs slightly. Place far hand over other hand or interlace fingers. Keeping arms straight, rotate torso to opposite side until cable makes contact with shoulder. Return to original position and repeat. Continue with opposite side.", :url => "UuaM6ePZGFw"

Exercise.create :muscle => "Abdominal", :name => "Hanging Leg Raise", :reps => "5", :duration => 5, :gym => 0, :core => false, :description => "You starting position is the same as with the straight leg raises but this time round when you bring your legs up you bend your knees. Bring it all the way up to your chest and then lower your legs. Repeat", :url => "oZOCx1Wdgu4"

Exercise.create :muscle => "Abdominal", :name => "Jack Knife", :reps => "3x25", :duration => 15, :gym => 0, :core => false, :description => "Sit on floor or mat. Lie supine with hands to sides. Simultaneously raise knees and torso until hips and knees are flexed. Return to starting position with waist, hips and knees extended. Repeat.", :url => "avXYMEjKc9c"

Exercise.create :muscle => "Endurance", :name => "400m Sprint", :reps => "4", :duration => 15, :gym => 0, :core => true, :description => "Sprint 400 m. Walk. Repeat. Preferably on a track.", :url => "YBmps4Y5V-E"

Exercise.create :muscle => "Explosion", :name => "200m Sprint", :reps => "6", :duration => 15, :gym => 0, :core => true, :description => "Sprint 200 m. Walk. Repeat. Preferably on a track.", :url => "t_Ly_AskujE"

Exercise.create :muscle => "Explosion", :name => "100m Sprint", :reps => "6", :duration => 15, :gym => 0, :core => true, :description => "Sprint 100 m. Walk. Repeat. Preferably on a track. Refer to the video for inspiration.", :url => "Pl5s6d9yTbI"

Exercise.create :muscle => "Explosion", :name => "Tire Jumps", :reps => "As many as possible", :duration => 15, :gym => 0, :core => true, :description => "Jump into tire, jump out of tire, repeat.", :url => "QY5LiA8bigU"

Exercise.create :muscle => "Explosion", :name => "Jump Rope", :reps => "3", :duration => 15, :gym => 0, :core => true, :description => "Self Explanatory", :url => "QY5LiA8bigU"

Exercise.create :muscle => "Endurance", :name => "1000m Sprint", :reps => "2", :duration => 15, :gym => 0, :core => true, :description => "Sprint 1000 m. Walk. Repeat. Preferably on a track."

Exercise.create :muscle => "Endurance", :name => "1600m Sprint", :reps => "1", :duration => 10, :gym => 0, :core => true, :description => "Sprint a mile."

Exercise.create :muscle => "Endurance", :name => "3200m Jog", :reps => "1", :duration => 30, :gym => 0, :core => true, :description => "Jog two miles."

Exercise.create :muscle => "Endurance", :name => "1600m Jog", :reps => "1", :duration => 15, :gym => 0, :core => false, :description => "Jog a mile."

Exercise.create :muscle => "Endurance", :name => "Elliptical", :reps => "20 Minutes", :duration => 20, :gym => 1, :core => false, :description => "Self Explanatory"

Exercise.create :muscle => "Endurance", :name => "Treadmill", :reps => "20 Minutes", :duration => 20, :gym => 1, :core => false, :description => "Self Explanatory"

Exercise.create :muscle => "Explosion", :name => "Jumping Jacks", :reps => "200", :duration => 10, :gym => 0, :core => false, :description => "Self Explanatory"

Exercise.create :muscle => "Explosion", :name => "Ball Jumps", :reps => "2x40", :duration => 10, :gym => 0, :core => false, :description => "Hold medicine ball at chest. Stand Stright. Jump as high as possible with ball in hand. Land on ground and move towards floor. Touch ball to ground. Rise to standing position. Repeat."

Exercise.create :muscle => "Explosion", :name => "Lateral Ball Jumps", :reps => "2x40", :duration => 10, :gym => 0, :core => false, :description => "Hold medicine ball at chest. Stand Stright. Jump onto ledge with ball in hand. Land on ground. Repeat.", :url => "sLqo4rNFpEM"
  end

  def self.down
    drop_table :exercises
  end
end
