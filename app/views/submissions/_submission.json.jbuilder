json.extract! submission, :id, :form_id, :answers, :created_at, :updated_at
json.url submission_url(submission, format: :json)