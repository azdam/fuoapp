json.array!(@accomodations) do |accomodation|
  json.extract! accomodation, :id, :room_nos, :validity_period, :has_occupant, :student_id, :hostel
  json.url accomodation_url(accomodation, format: :json)
end
