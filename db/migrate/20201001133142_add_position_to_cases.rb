class AddPositionToCases < ActiveRecord::Migration[6.0]
  def change
    add_column :cases, :position, :integer
  end
end
