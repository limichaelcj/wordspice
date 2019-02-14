class Word < ApplicationRecord
  has_many :associations
  has_many :tags, through: :associations
  has_many :endorsements, through: :associations, source: :vote
end
