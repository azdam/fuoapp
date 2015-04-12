FactoryGirl.define do
  factory :student do
    lastname FFaker::Name.name
    firstname FFaker::Name.name
    matric_nos "2011/34303043"
    department "Test department"
    level "500"
    email FFaker::Internet.email
    phonenos FFaker::PhoneNumber.phone_number
  end

end
