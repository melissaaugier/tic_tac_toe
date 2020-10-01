class Grid < ApplicationRecord
  belongs_to :user
  has_many :cases


end
