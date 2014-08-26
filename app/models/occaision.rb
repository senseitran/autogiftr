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

end
