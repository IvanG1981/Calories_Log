class RemoveCaloriesInAndActivity < ActiveRecord::Migration[6.0]
  def change
    remove_column :calories, :calories_in
    remove_column :calories, :activity_for_calories_burn
  end
end
