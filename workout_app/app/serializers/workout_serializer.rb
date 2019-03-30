class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :workout, :duration, :location, :mood, :image, exercises_attributes: [:id, :name, :description, :_destroy])

  # (:date, :workout, :duration, :location, :mood, :image,
  # exercises_attributes: [:id, :name, :description, :_destroy])
end
