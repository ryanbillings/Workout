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
    @start_date = current_user.plan.start_date
    @end_date = current_user.plan.end_date
    outarr = Array.new
    @mintimes = Array.new
    @workout_types.sort_by!(|ex|ex.priority) 
      
    # Loop through workout types
    for wk in @workout_types
      # Get corresponding 'default' workouts
      @mintimes.push(wk.min_time)
      priority_excersises = get_exercise(wk,true)
      outarr.push(priority_exercises)
      priority_excersises = get_exercise(wk,false)
      outarr.push(priority_exercises)
    end

    counter = 1
    @start_date.upto(@end_date) do |day|
      alocArray = Array.new
      case day.DAYS_INTO_WEEK
          when 0
          alocArray = alocHelper(@week.monday,outarr)
          when 1
          alocArray = alocHelper(@week.tuesday,outarr)
          when 2
          alocArray = alocHelper(@week.wednesday,outarr)
          when 3
          alocArray = alocHelper(@week.thursday,outarr)
          when 4
          alocArray = alocHelper(@week.friday,outarr)
          when 5
          alocArray = alocHelper(@week.saturday,outarr)
          when 6
          alocArray = alocHelper(@week.sunday,outarr)
      end
      if alocArray != nil
        newday = Day.new
        newday.plan_id = current_user.plan_id
        newday.date = day
        newday.name = "Workout# #{counter}"
        newday.save!
        for ex in alocArray
          newex = ex.clone
          newex.day_id = newday.id
          newex.save!
        end
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
        return_array | getter(time,outarr.at(0),outarr.at(1),@mintimes.at(0))
      end
      elsif (time >= 60 && time <= 89) || @workout_types.length == 2
          return_array | getter(0.6*time,outarr.at(0),outarr.at(1),@mintimes.at(0))
          return_array | getter(0.4*time,outarr.at(2),outarr.at(3),@mintimes.at(1))
      end
      else
          return_array | getter(0.5*time,outarr.at(0),outarr.at(1),@mintimes.at(0))
          return_array | getter(0.3*time,outarr.at(2),outarr.at(3),@mintimes.at(1))
          return_array | getter(0.2*time,outarr.at(4),outarr.at(5),@mintimes.at(2))
      end
      
      return return_array
  end
    
  def getter(time,ac,al,mintime)
    return_array = Array.new
    exs = 1  
    timetmp = 0
      
    return_array.push(ac.at(0))
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
    
    while (timetmp < time) && ((time-timetmp) > mintime)
      index = 0
      for ex in al
        if ex.duration < (time - timetmp)
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
          
  def get_exercise(wk,corl)
    return_array = Array.new
    if current_user.plan.gym == 1
      if wk.name == "Upper Body"
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Chest",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Bicep",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Tricep",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Shoulder",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Back",corl))
      end
      if wk.name == "Lower Body"
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Hamstring",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Gluteal",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Quadricep",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Calves",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Hips",corl))
      end
      if wk.name == "Core"
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Abdominal",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Obliques",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ?", nil, "Lower Back",corl))
      end
    end
    else
      if wk.name == "Upper Body"
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Chest",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Bicep",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Tricep",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Shoulder",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Back",corl))
      end
      if wk.name == "Lower Body"
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Hamstring",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Gluteal",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Quadricep",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Calves",corl))
      end
      if wk.name == "Core"
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Abdominal",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Obliques",corl))
        return_array.push(Excersise.where("day_id IS ? AND muscle = ? AND core = ? AND gym = 0", nil, "Lower Back",corl))
      end
    end
    return return_array
  end

end
