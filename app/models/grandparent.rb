class Grandparent < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :skill, :description, :price, :experience, presence: true
end
