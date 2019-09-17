class RemoveCaloriesBurn < ActiveRecord::Migration[6.0]
  def change
    remove_column :calories, :calories_burn
    remove_column :calories, :food_for_calories_in
  end
end
