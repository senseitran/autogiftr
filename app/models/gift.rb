# == Schema Information
#
# Table name: gifts
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  price       :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  picture     :string(255)
#  slug        :string(255)
#

class Gift < ActiveRecord::Base
	has_many :gift_occaisions
	has_many :occaisions, through: :gift_occaisions
	
	mount_uploader :picture, GiftPictureUploader

	extend FriendlyId
	friendly_id :name, use: :slugged

	acts_as_taggable
end
