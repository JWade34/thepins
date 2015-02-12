class User < ActiveRecord::Base
  has_many :pins
  has_secure_password validations: false

#  paginates_per 2

#  validates :user, uniqueness: true
end
