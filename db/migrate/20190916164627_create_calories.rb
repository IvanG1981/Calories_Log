class CreateCalories < ActiveRecord::Migration[6.0]
  def change
    create_table :calories do |t|
      t.integer :user_id
      t.integer :calories_in
      t.integer :calories_burn
      t.string :food_for_calories_in
      t.string :activity_for_calories_burn

      t.timestamps
    end
  end
end
