class Word < ApplicationRecord
  has_many :links
  has_many :tags, through: :links
  has_many :endorsements, through: :links, source: :vote
end
