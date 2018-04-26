class AddAddressToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :street, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
  end
end
