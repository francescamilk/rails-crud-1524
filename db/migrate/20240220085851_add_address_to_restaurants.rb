class AddAddressToRestaurants < ActiveRecord::Migration[7.1]
  def change
    # add_column :products,   :part_number,   :string
    # add_column :table_name, :new_col_name,  :data_type
    add_column :restaurants, :address, :string
  end
end
