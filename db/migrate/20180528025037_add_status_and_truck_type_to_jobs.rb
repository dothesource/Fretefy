class AddStatusAndTruckTypeToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :status, :string
    add_column :jobs, :truck_type, :string
  end
end
