class CreateLabelsThemes < ActiveRecord::Migration
  def change
    create_table :labels_themes do |t|
      t.references :label, index: true
      t.references :theme, index: true
    end
  end
end
