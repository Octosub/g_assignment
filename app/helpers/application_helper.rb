module ApplicationHelper
  def timeslot_for_row(row)
    case row
      when 1 then "8:15 - 9:45"
      when 2 then "10:00 - 11:30"
      when 3 then "11:45 - 13:15"
      when 4 then "13:30 - 15:00"
      when 5 then "15:15 - 16:45"
      when 6 then "17:00 - 18:30"
      when 7 then "18:45 - 20:15"
    end
  end

  def timeslot_to_time(timeslot)
    case
      when timeslot >= 1 && timeslot <= 5 then "8:15 - 9:45"
      when timeslot >= 6 && timeslot <= 10 then "10:00 - 11:30"
      when timeslot >= 11 && timeslot <= 15 then "11:45 - 13:15"
      when timeslot >= 16 && timeslot <= 20 then "13:30 - 15:00"
      when timeslot >= 21 && timeslot <= 25 then "15:15 - 16:45"
      when timeslot >= 26 && timeslot <= 30 then "17:00 - 18:30"
      when timeslot >= 31 && timeslot <= 35 then "18:45 - 20:15"
    end
  end

  def timeslot_to_day(timeslot)
    mon = [1, 6, 11, 16, 21, 26, 31]
    tue = [2, 7, 12, 17, 22, 27, 32]
    wed = [3, 8, 13, 18, 23, 28, 33]
    thu = [4, 9, 14, 19, 24, 29, 34]
    fri = [5, 10, 15, 20, 25, 30, 35]

    return "Mon" if mon.include?(timeslot)
    return "Tue" if tue.include?(timeslot)
    return "Wed" if wed.include?(timeslot)
    return "Thu" if thu.include?(timeslot)
    return "Fri" if fri.include?(timeslot)
  end
end
