class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.references :account, foreign_key: true
      t.string :name
      t.string :truck_type

      t.timestamps
    end
  end
end
