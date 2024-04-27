class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :semester
      t.integer :timeslot
      t.integer :credits
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
