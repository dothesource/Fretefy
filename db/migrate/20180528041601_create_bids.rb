class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.references :job, foreign_key: true
      t.references :truck, foreign_key: true
      t.string :price

      t.timestamps
    end
  end
end
