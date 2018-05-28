class AddCoordinatesToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :from_latitude, :float
    add_column :jobs, :from_longitude, :float
    add_column :jobs, :to_latitude, :float
    add_column :jobs, :to_longitude, :float
  end
end
