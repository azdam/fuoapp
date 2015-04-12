json.array!(@adminstrators) do |adminstrator|
  json.extract! adminstrator, :id, :employee_id, :lastname, :firstname, :email, :auth_level
  json.url adminstrator_url(adminstrator, format: :json)
end
