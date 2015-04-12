class Student < ActiveRecord::Base

  validates :lastname, :firstname, :email, :phonenos, presence: true
end
