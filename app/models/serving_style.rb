class ServingStyle < ActiveRecord::Base
  has_many :tea_bases
  mount_uploader :photo, PhotoUploader
end
