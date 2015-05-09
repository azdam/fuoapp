FactoryGirl.define do
  factory :accomodation do
    room_nos "MyString"
    validity_period "MyString"
    has_occupant false
    student nil
    hostel nil
  end

end
