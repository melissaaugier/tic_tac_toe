class Case < ApplicationRecord
  belongs_to :grid

  def change_value_to_true
    self.value == !self.value
  end
end
