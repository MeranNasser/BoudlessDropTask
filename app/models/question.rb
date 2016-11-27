class Question < ActiveRecord::Base
  validates_presence_of :form_id, :title, :answer_type
  validates :answer_type, inclusion:{in: ["text", "checkbox", "dropdown", "radio"]}
  
  has_many :answers
  belongs_to :form
end
