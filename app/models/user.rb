class User < ActiveRecord::Base
  has_many :pins
  has_secure_password
  paginates_per 10
end
