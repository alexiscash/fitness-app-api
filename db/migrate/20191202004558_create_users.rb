class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password, default: 'boi'
      t.text :bio, default: 'I am a fit ass bitch'
      t.string :goals, default: 'to not hate myself'
      t.integer :current_weight, default: 150
      t.integer :goal_weight, default: 140


      t.timestamps
    end
  end
end
