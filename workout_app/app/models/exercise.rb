class Exercise < ApplicationRecord
  has_many :directions
  has_many :workouts, through: :directions

  def description=(description)
  end

  def description

  end

end
