# == Schema Information
#
# Table name: occaisions
#
#  id             :integer          not null, primary key
#  message        :text
#  name           :string(255)
#  date           :date
#  occaision_type :string(255)
#  recipient_id   :integer
#  created_at     :datetime
#  updated_at     :datetime
#  sent           :boolean
#

class Occaision < ActiveRecord::Base
  belongs_to :recipient
  	has_many :gift_occaisions
	has_many :gifts, through: :gift_occaisions

	def self.future
		where('date >= ?', Date.today)
	end

	def self.order_by_date
		order(date: :desc)
	end

	def self.unsent
		where(sent: nil)
	end

end
