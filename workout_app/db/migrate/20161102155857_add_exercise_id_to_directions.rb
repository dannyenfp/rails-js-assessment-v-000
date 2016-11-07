class AddExerciseIdToDirections < ActiveRecord::Migration[5.0]
  def change
    add_column :directions, :exercise_id, :integer
  end
end
