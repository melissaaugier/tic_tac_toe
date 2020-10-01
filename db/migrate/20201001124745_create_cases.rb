class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.boolean :value, default: false
      t.references :grid, null: false, foreign_key: true
      t.timestamps
    end
  end
end
