class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :workout
      t.string :duration
      t.string :location
      t.string :mood


      t.timestamps
    end
  end
end
