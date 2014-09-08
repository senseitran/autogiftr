# == Schema Information
#
# Table name: recipients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Recipient < ActiveRecord::Base
  belongs_to :user
  has_many :occaisions

  accepts_nested_attributes_for :occaisions
end
