class AddSecondFlavourToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :second_flavour_id, :integer
  end
end
