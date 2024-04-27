class ChangeCourses < ActiveRecord::Migration[7.1]
  def change
    remove_column :courses, :timeslot
    add_column :courses, :start_time, :datetime
  end
end
