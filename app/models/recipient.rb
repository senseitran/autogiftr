class Recipient < ActiveRecord::Base
  belongs_to :user
  has_many :occaisions

  accepts_nested_attributes_for :occaisions
end
