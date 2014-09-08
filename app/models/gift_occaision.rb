# == Schema Information
#
# Table name: gift_occaisions
#
#  id           :integer          not null, primary key
#  gift_id      :integer
#  occaision_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class GiftOccaision < ActiveRecord::Base
  belongs_to :gift
  belongs_to :occaision
end
