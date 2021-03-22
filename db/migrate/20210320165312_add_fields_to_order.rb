class AddFieldsToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :billing_details, :string
    add_column :orders, :shipping_address, :string
  end
end
