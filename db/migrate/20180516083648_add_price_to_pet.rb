class AddPriceToPet < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :price, :integer
  end
end
