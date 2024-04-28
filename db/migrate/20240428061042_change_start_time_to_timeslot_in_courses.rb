class ChangeStartTimeToTimeslotInCourses < ActiveRecord::Migration[7.1]
  def change
    remove_column :courses, :start_time
    add_column :courses, :timeslot, :integer
  end
end
