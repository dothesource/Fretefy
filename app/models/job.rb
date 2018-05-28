class Job < ApplicationRecord
  belongs_to :account
  belongs_to :truck, optional: true
  has_many :bids
  has_many :trucks, through: :bids

  before_destroy :check_status

  validates_presence_of :account, :name, :description

  def check_status
    status != :active || status != :done
  end
end
