class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :contact, :string
    add_column :users, :roles_mask, :integer
  end
end
