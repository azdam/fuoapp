class Hostel < ActiveRecord::Base
  has_many :accomodations, dependent: :destroy
end
