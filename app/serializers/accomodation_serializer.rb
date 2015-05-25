class AccomodationSerializer < ActiveModel::Serializer
  # embed :names
  attributes :room_nos, :validity_period, :hostel_name
  has_one :hostel
end
