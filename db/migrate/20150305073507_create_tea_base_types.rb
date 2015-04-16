class CreateTeaBaseTypes < ActiveRecord::Migration
  def change
    create_table :tea_base_types do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.references :tea_base, index: true

      t.timestamps
    end
  end
end
