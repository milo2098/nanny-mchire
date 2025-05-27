class Grandparent < ApplicationRecord
  belongs_to :user

  validates :skill, :description, :price, :experience, presence: true
end
