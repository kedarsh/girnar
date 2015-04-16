class AddPhotoToServingStyle < ActiveRecord::Migration
  def change
    add_column :serving_styles, :photo, :string
  end
end
