json.array!(@students) do |student|
  json.extract! student, :id, :lastname, :firstname, :matric_nos, :department, :level, :email, :phonenos
  json.url student_url(student, format: :json)
end
