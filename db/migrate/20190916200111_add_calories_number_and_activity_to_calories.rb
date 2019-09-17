class AddCaloriesNumberAndActivityToCalories < ActiveRecord::Migration[6.0]
  def change
    add_column :calories, :calories_number, :integer
    add_column :calories, :calories_type, :boolean
    add_column :calories, :calories_related_activity, :string

  end
end
