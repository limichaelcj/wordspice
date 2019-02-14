class Association < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  belongs_to :word
  has_many :votes, dependent: :destroy
  has_many :endorsements, through: :votes, source: :user
end
