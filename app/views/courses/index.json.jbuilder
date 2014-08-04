json.array!(@courses) do |course|
  json.extract! course, :id, :name, :content, :start_date, :end_date, :price, :discount
  json.url course_url(course, format: :json)
end
