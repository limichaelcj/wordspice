class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :association
  has_one :word, through: :association
  has_one :tag, through: :association
end
