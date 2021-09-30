class Comment < ApplicationRecord
  belongs_to :post
  has_many :bookmarkes,dependent: :destroy
  has_one :buy,dependent: :destroy
end
