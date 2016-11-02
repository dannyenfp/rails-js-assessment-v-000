class CreateWorkoutExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :workout_exercises do |t|

      t.timestamps
    end
  end
end
