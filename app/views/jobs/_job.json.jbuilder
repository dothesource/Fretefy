json.extract! job, :id, :account_id, :truck_id, :name, :description, :price, :created_at, :updated_at
json.url job_url(job, format: :json)
