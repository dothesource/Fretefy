class Job < ApplicationRecord
  belongs_to :account
  belongs_to :truck, optional: true

  validates_presence_of :account, :name, :description
end
