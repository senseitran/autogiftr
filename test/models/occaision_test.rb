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

require 'test_helper'

class OccaisionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
