module WorkoutTypesHelper

  def generate_populate

    @workout_types = current_user.plan.workout_types
    @week = current_user.week
    @start_date = current_user.plan.start_date
    @end_date = current_user.plan.end_date
    outarr = Array.new
    @mintimes = Array.new
    @workout_types.sort_by!{|ex|ex.priority}
    @color_array = Day.getColor
    priority_exercises = Array.new

    # Loop through workout types
    i = 0
    for wk in @workout_types
      # Get corresponding 'default' workouts
      priority_exercises = get_exercise(wk,true)
      outarr[i] = priority_exercises
      priority_exercises = get_exercise(wk,false)
      outarr[i + 1] = priority_exercises
      @mintimes.push(wk.min_time)
      i += 2
    end

    counter = 1
    @start_date.upto(@end_date) do |day|
      alocArray = Array.new
      if day.monday?
            alocArray = alocHelper(@week.monday,outarr)
      elsif day.tuesday?
            alocArray = alocHelper(@week.tuesday,outarr)
      elsif day.wednesday?
            alocArray = alocHelper(@week.wednesday,outarr)
      elsif day.thursday?
            alocArray = alocHelper(@week.thursday,outarr)
      elsif day.friday?
            alocArray = alocHelper(@week.friday,outarr)
      elsif day.saturday?
            alocArray = alocHelper(@week.saturday,outarr)
      elsif day.sunday?
            alocArray = alocHelper(@week.sunday,outarr)
      end
      if alocArray != nil
        newday = Day.new
        newday.plan_id = current_user.plan.id
        newday.date = day
        newday.name = "Workout ##{counter}"
        newday.color = @color_array[counter%7]
        duration = 0
        newday.save!
        for ex in alocArray
          newex = Exercise.new
          newex.name = ex.name
          newex.duration = ex.duration
          newex.muscle = ex.muscle
          newex.reps = ex.reps
          newex.description = ex.description
          newex.url = ex.url
          newex.day_id = newday.id
          newex.save!
          duration += newex.duration
        end
        newday.update_attribute(:duration, duration)
        counter+=1
      end
    end
  end

  def alocHelper(time,outarr)
      return_array = Array.new
      if time == 0
        return nil
      end
      
      if time < 30
        time = 30
      end

      if (time >= 30 && time <= 59) || @workout_types.length == 1
        return_array = return_array + getter(time,outarr.at(0),outarr.at(1),@mintimes.at(0))
      elsif (time >= 60 && time <= 89) || @workout_types.length == 2
          return_array = return_array + getter(0.6*time,outarr.at(0),outarr.at(1),@mintimes.at(0))
          return_array = return_array + getter(0.4*time,outarr.at(2),outarr.at(3),@mintimes.at(1))
      else
          return_array = return_array + getter(0.5*time,outarr.at(0),outarr.at(1),@mintimes.at(0))
          return_array = return_array + getter(0.3*time,outarr.at(2),outarr.at(3),@mintimes.at(1))
          return_array = return_array + getter(0.2*time,outarr.at(4),outarr.at(5),@mintimes.at(2))
      end
      
      timeCount = 0
      for arr in return_array
        timeCount += arr.duration
      end

      if timeCount >= @mintimes.at(0)
        return_array = return_array + getter_wrap(time-timeCount,outarr.at(1),@mintimes.at(0))
      end

      return return_array
  end
    
  def getter(time,ac,al,mintime)
    return_array = Array.new
    exs = 1  
    timetmp = 0
    
    return_array.push(ac.at(0).clone)
    ac.delete_at(0)
    ac.push(return_array.at(0))
    timetmp += return_array.at(0).duration
      
    if time > 30
      return_array.push(ac.at(0))
      ac.delete_at(0)
      ac.push(return_array.at(1))
      exs = 2
      timetmp += return_array.at(1).duration
    end
    while (timetmp < time) && ((time-timetmp) >= mintime)
      index = 0
      for ex in al
        if ex.duration <= (time - timetmp)
          return_array.push(ex)
          timetmp += ex.duration
          exs += 1
          al.delete_at(index)
          al.push(return_array.at(exs-1))
          break
        end
        index += 1
      end
    end
    
    return return_array
  end
  
  def getter_wrap(time, al, mintime)
  timetmp = 0
  return_array = Array.new
  while (timetmp < time) && ((time-timetmp) >= mintime)
      index = 0
      for ex in al
        if ex.duration <= (time - timetmp)
          return_array.push(ex)
          timetmp += ex.duration
          al.delete_at(index)
          al.push(return_array.at(return_array.size-1))
          break
        end
        index += 1
      end
    end
   
   return return_array
  end
        
  def get_exercise(wk,corl)
    return_array = Array.new
    if current_user.plan.gym
      if wk.name == "Upper Body"
        wk.min_time = 15
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Chest",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Bicep",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Tricep",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Shoulder",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Back",corl))
      end
      if wk.name == "Lower Body"
        wk.min_time = 15
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Hamstring",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Gluteal",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Quadricep",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Calves",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Hips",corl))
      end
      if wk.name == "Core"
        wk.min_time = 5
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Abdominal",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Obliques",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Lower Back",corl))
      end
        if wk.name == "Cardio"
            wk.min_time = 10
            return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Explosion",corl))
            return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Endurance",corl))
        end  
    else
      if wk.name == "Upper Body"
        wk.min_time = 15
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Chest",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Bicep",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Tricep",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Shoulder",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Back",corl))
      end
      if wk.name == "Lower Body"
        wk.min_time = 15
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Hamstring",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Gluteal",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Quadricep",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Calves",corl))
      end
      if wk.name == "Core"
        wk.min_time = 5
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Abdominal",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Obliques",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Lower Back",corl))
      end
      if wk.name == "Cardio"
        wk.min_time = 10
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Explosion",corl))
        return_array = return_array.concat(Exercise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Endurance",corl))
      end  
    end
 
    return return_array
  end

end
