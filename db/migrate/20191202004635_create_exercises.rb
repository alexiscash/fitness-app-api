class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :video_url, default: 'https://www.youtube.com/embed/hUE2DuMP9y8'
      t.text :description, default: 'ayyy lmao'
      t.integer :workout_id

      t.timestamps
    end
  end
end
