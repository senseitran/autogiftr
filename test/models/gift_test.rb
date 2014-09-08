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

require 'test_helper'

class GiftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
