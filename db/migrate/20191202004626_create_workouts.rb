class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.text :description, default: "it's lit"
      
      t.timestamps
    end
  end
end
