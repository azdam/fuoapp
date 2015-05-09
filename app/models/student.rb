class Student < ActiveRecord::Base

  validates :lastname, :firstname, :email, :phonenos, presence: true

  has_one :accomodation

  def full_name
    "#{lastname}, #{firstname}"
  end
end
