class Workout < ApplicationRecord
  belongs_to :user 
  has_many :exercises, through: :directions
  has_many :directions

  scope :hardest_workout, -> {all.max {|a,b| a.exercises.length <=> b.exercises.length}} 
 
  has_attached_file :image, styles: { :medium => "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :workout, :image, presence: true

  def exercises_attributes=(attributes)
    attributes.values.each do |value|
      if !(value["name"].blank?) 
        exercise = Exercise.find_or_create_by(name: value["name"]) 
        self.directions.build(exercise_id: exercise.id, description: value["description"])
      end
    end
  end
end 




