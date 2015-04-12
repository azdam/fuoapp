json.array!(@hostels) do |hostel|
  json.extract! hostel, :id, :name, :description, :room_count
  json.url hostel_url(hostel, format: :json)
end
