class Palette < ApplicationRecord
  belongs_to :creator, foreign_key: 'creator_id', class_name: 'User'
  validates_presence_of :color_palette, :creator_id
end
