require 'date'

#create 20 students
20.times { FactoryGirl.create :student }

#create 5 hostels
5.times do |n|
  Hostel.create!( name: "FUO Hostel #{n + 1}", description: "This is FUO Hostel #{n + 1}, created on #{Date.new(rand(2005..2013), 2, 3)}", room_count: rand(90..150) )
end

#crate accomodations

students = Student.all
hostel_ids = Hostel.all.map {|hostel| hostel.id }
#we're assuming that each student has an acomodation

students.each do |student|
  accomodation = Accomodation.create!(validity_period: "One Session (2014/2015)", has_occupant: 1, student_id: student.id, hostel_id: rand( 1..hostel_ids.length ))
  accomodation.update_attribute("room_nos",  { rand(1..accomodation.hostel.room_count).to_s.rjust(3, '0')})
  accomodation.save!
end