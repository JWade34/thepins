class Pin < ActiveRecord::Base
  belongs_to :user
  paginates_per 4
end
