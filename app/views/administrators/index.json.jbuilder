json.array!(@administrators) do |administrator|
  json.extract! administrator, :id, :email, :password, :password_digest
  json.url administrator_url(administrator, format: :json)
end
