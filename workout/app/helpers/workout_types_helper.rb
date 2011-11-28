module WorkoutTypesHelper
=begin
  def rand
    i=0
    plan_id=Plan.find_by_user_id(current_user.id).id
    while(i!=50)
      i+=1
      day=Day.new
      day.plan_id=plan_id
      day.duration=i
      day.save!
      wrk=Excersise.new
      wrk.day_id=day.id
      wrk.save!
      wrk2=Excersise.new
      wrk2.day_id=day.id
      wrk2.save!
    end
  end
=end
  def generate_populate

    @workout_types = current_user.plan.workout_types
    @week = current_user.week
    @start_date = current_user.start_date
    @end_date = current_user.end_date

    # Loop through workout types
    for wk in @workout_types

      # Get corresponding 'default' workouts
      priority_excersises = get_exercise(wk)
      

      # Loop through start date to end date, split up by weeks
        # Sub loop through week, split up by days
        
          # Get user's week -> day and amount of time 
            # Do populations based on amount of time
            # End 
          # End
        # End
      # End
      end
  end

  def get_exercise(wk)
    return_array = Array.new
    if wk == "Upper Body"
      return_array.push(Excersise.where("day_id = ? AND muscle = ?", nil, "Chest"))
      return_array.push(Excersise.where("day_id = ? AND muscle = ?", nil, "Bicep"))
    end
  end
end
