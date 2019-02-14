# Flavor Tag
class Tag < ApplicationRecord
  belongs_to :user
  has_many :associations
end
