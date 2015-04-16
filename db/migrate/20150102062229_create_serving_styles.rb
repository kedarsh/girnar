class CreateServingStyles < ActiveRecord::Migration
  def change
    create_table :serving_styles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
