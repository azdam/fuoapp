class Accomodation < ActiveRecord::Base
  belongs_to :user
  belongs_to :hostel
end
