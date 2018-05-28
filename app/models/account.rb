class Account < ApplicationRecord
  belongs_to :user
  has_many :jobs
  has_many :trucks
  has_many :bids, through: :trucks
end
