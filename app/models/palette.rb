class Palette < ApplicationRecord
  validates_presence_of :color_palette
  belongs_to :user
end
