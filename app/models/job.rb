class Job < ApplicationRecord
  belongs_to :account
  belongs_to :truck, optional: true
  has_many :bids
  has_many :trucks, through: :bids

  before_destroy :can_destroy?

  validates_presence_of :account, :name, :description

  symbolize :status, :in => [:new, :ready, :in_progress, :finished, :cancelled], :methods => true, :allow_blank => true

  def accept_bid(bid)
    Job.transaction do
      @job.status = :ready
      @job.truck = bid.truck

      @job.save
    end
  end

  private

  def can_destroy?
    status != :active || status != :done
  end
end
