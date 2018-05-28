class Bid < ApplicationRecord
  belongs_to :job
  belongs_to :truck
end
