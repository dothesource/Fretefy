class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :account, foreign_key: true
      t.references :truck, foreign_key: true
      t.string :name
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
