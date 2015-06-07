class Administrator < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness:  true
  validates :email_confirmation, presence: true
end
