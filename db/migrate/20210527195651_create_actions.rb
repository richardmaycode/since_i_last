class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.string :title, null: false
      t.string :icon, null: false
      t.datetime :last_execution, null: false
      # t.integer :goal, null: true, default: 0
      # t.integer :goal_unit, null: false, default: 0

      t.boolean :show_icon, null: false, default: false
      t.timestamps
    end
  end
end
