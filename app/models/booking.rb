class Booking < ApplicationRecord
  belongs_to :grandparent
  belongs_to :user

  validates :date_time, presence: true
end
