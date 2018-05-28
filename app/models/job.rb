class Job < ApplicationRecord
  belongs_to :account
  belongs_to :truck, optional: true
  has_many :bids
  has_many :trucks, through: :bids

  before_destroy :can_destroy?

  validates_presence_of :account, :name, :description

  private

  def can_destroy?
    status != :active || status != :done
  end
end
