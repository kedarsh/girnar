class CreateBases < ActiveRecord::Migration
  def change
    create_table :bases do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.text :info
      t.integer :no_of_flavours

      t.timestamps
    end
  end
end
