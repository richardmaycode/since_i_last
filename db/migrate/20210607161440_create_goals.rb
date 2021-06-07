class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.integer :amount, null: false, default: 0
      t.integer :goal_type, null: false, default: 0

      t.timestamps
    end
  end
end
