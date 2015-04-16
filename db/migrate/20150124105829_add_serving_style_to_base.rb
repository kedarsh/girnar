class AddServingStyleToBase < ActiveRecord::Migration
  def change
    add_reference :bases, :serving_style, index: true
  end
end
