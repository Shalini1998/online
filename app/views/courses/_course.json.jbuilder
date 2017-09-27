json.extract! course, :id, :name, :description, :fee, :duration, :is_paid?, :created_at, :updated_at
json.url course_url(course, format: :json)
