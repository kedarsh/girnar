class DeleteTableBase < ActiveRecord::Migration
  def change
    drop_table :bases
  end
end
