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
end
