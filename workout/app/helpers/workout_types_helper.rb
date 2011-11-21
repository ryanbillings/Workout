module WorkoutTypesHelper
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
end
