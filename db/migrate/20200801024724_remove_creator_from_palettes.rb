class RemoveCreatorFromPalettes < ActiveRecord::Migration[6.0]
  def change
    remove_column :palettes, :creator_id, :integer
  end
end
