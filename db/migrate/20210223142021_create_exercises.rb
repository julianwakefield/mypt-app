class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :body_parts

      t.timestamps
    end
  end
end
