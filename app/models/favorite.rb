class Favorite < ApplicationRecord
  belongs_to :user
  validates_presence_of :palette_id, :user_id
end
