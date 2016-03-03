class Skill < ActiveRecord::Base
  belongs_to :fighter
  validates :name, presence: true, length: { minimum: 4, maximum: 12 }
  validates :value, presence: true
  validates_uniqueness_of :fighter_id, scope: :name, message: "already has this skill"
end
