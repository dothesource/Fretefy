class Truck < ApplicationRecord
  belongs_to :account
  has_many :bids
  has_many :jobs

  validates_presence_of :name
  validates_presence_of :truck_type
end
