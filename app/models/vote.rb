class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :link
  has_one :word, through: :link
  has_one :tag, through: :link
end
