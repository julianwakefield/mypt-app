class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
