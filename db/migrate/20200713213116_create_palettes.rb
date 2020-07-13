class CreatePalettes < ActiveRecord::Migration[6.0]
  def change
    create_table :palettes do |t|
      t.text :color_palette, array: true, default: []
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
