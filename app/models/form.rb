class Form < ActiveRecord::Base
  # Validations
  validates :title, presence: true
  validates :user_id, presence: true
  
  # Associations
  has_many :questions
  belongs_to :user
end
