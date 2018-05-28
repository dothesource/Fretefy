class AddContactToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :contact, :text
  end
end
