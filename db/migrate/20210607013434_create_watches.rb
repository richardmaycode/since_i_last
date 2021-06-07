class CreateWatches < ActiveRecord::Migration[6.1]
  def change
    create_table :watches do |t|
      t.string :title, null: false
      t.string :icon, null: false, default: "test"
      t.integer :color
      t.datetime :executed, null: false
      t.integer :goal, null: false, default: 0
      t.integer :goal_type, null: false, default: 0

      t.timestamps
    end
  end
end
