class CreateRelatedFlavours < ActiveRecord::Migration
  def change
    create_table :related_flavours do |t|
      t.integer :flavour_a_id
      t.integer :flavour_b_id

      t.timestamps
    end

    add_index :related_flavours, :flavour_a_id
    add_index :related_flavours, :flavour_b_id
    add_index :related_flavours, [:flavour_a_id, :flavour_b_id], unique: true
  end
end
