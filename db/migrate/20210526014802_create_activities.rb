class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title, null: false
      t.string :icon, null: true
      t.datetime :last_instance, null: false
      t.integer :goal
      t.integer :goal_unit

      t.boolean :show_icon, null: false, default: false
      t.timestamps
    end
  end
end
