class Submission < ActiveRecord::Base
 validates_presence_of :form_id
  
  belongs_to :form
  
  serialize :answers, Hash
end
