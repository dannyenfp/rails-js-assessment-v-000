class AddAttachmentImageToWorkouts < ActiveRecord::Migration
  def self.up
    change_table :workouts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :workouts, :image
  end
end
