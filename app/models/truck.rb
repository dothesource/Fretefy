class Truck < ApplicationRecord
  belongs_to :account
  has_many :bids
  has_many :jobs

  validates_presence_of :name
  validates_presence_of :truck_type

  symbolize :status, :in => [:available, :on_job], :methods => true, allow_blank: true

  before_create :fill_status

  def start_job(job)
    # TODO: verificar quais regras para start_job
    job.status = :active
    self.status = :on_job

    Truck.transaction do
      job.save!
      self.save!
    end
  end

  private

  def fill_status
    self.status = :available
  end
end
