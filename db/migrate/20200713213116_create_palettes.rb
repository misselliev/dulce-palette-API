class CreatePalettes < ActiveRecord::Migration[6.0]
  def change
    create_table :palettes do |t|
      t.text :color_palette, array: true, default: []
      t.integer :creator_id
      t.timestamps
    end
    add_foreign_key :palettes, :users, column: :creator_id
  end
end
