class Bid < ApplicationRecord
  belongs_to :job
  belongs_to :truck

  before_create :check_job_availability

  private

  def check_job_availability
    job.status == :new
  end
end
