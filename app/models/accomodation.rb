class Accomodation < ActiveRecord::Base
  belongs_to :student
  belongs_to :hostel
  attr_accessor :hostel_name
end
