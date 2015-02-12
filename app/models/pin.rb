class Pin < ActiveRecord::Base
  belongs_to :user
  paginates_per 12
  mount_uploader :photo, PhotoUploader


  include PgSearch
  pg_search_scope :search,
                  :against => [:name],
                  :using => {
                    :tsearch => {
                      :dictionary => "english"}
                  }
end
