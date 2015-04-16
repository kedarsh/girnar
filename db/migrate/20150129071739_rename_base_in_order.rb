class RenameBaseInOrder < ActiveRecord::Migration
  def change
    rename_column :orders, :base_id, :tea_base_id
  end
end
