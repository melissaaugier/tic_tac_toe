class AddSymbolToCase < ActiveRecord::Migration[6.0]
  def change
    add_column :cases, :symbol, :string, default: " "
  end
end
