class Truck < ApplicationRecord
  belongs_to :account

  validates_presence_of :name
  validates_presence_of :truck_type
end
