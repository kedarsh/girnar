class CreateTeaBases < ActiveRecord::Migration
  def change
    create_table :tea_bases do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.text :info
      t.integer :no_of_flavours
      t.references :serving_style, index: true

      t.timestamps
    end
  end
end
