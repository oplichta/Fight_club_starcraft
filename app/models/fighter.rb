class Fighter < ActiveRecord::Base
  validates :image, presence: true
  validates :name, presence: true, length: { minimum: 4, maximum: 12 }
  validates :last_name, presence: true, length: { minimum: 4, maximum: 12 }
  has_attached_file :image, styles: { medium: '640x' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_many :fights
  has_many :skills, dependent: :destroy
end
