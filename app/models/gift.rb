class Gift < ActiveRecord::Base
	has_many :gift_occaisions
	has_many :occaisions, through: :gift_occaisions
	
	mount_uploader :picture, GiftPictureUploader
end
