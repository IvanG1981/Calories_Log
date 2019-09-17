class Calory < ApplicationRecord
  belongs_to :user
  validates :calories_number, presence: true,
                              length: {maximum: 4},
                              numericality: { only_integer: true,
                                              greater_than_or_equal_to: 0,
                                              less_than_or_equal_to: 2500 }
  #validates :calories_type, presence: true
  validates :calories_related_activity, presence: true, length: { maximum: 140}
  paginates_per 10
end
