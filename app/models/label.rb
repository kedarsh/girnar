class Label < ActiveRecord::Base
	has_and_belongs_to_many :themes

	mount_uploader :photo, PhotoUploader
end
