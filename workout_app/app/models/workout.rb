class Workout < ApplicationRecord
  belongs_to :user 
  has_many :exercises
  has_many :directions

  accepts_nested_attributes_for :directions,
                                reject_if: proc { |attributes| attributes['name'].blank? },
                                allow_destroy: true
  accepts_nested_attributes_for :exercises,
                                reject_if: proc { |attributes| attributes['description'].blank? },
                                allow_destroy: true


  has_attached_file :image, styles: { :medium => "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :workout, :description, :image, presence: true

end
