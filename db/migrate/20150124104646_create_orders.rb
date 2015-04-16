class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.references :serving_style, index: true
      t.references :base, index: true
      t.references :flavour, index: true
      t.references :packaging, index: true
      t.references :label, index: true
      t.string :blend_name
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
