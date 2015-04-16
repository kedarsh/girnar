class AddPhotoToLabels < ActiveRecord::Migration
  def change
    add_column :labels, :photo, :string
  end
end
