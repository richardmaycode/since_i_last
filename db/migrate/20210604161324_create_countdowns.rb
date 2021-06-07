class CreateCountdowns < ActiveRecord::Migration[6.1]
  def change
    create_table :countdowns do |t|
      t.string :title, null: false
      t.string :icon
      t.integer :color, null: false
      t.datetime :event_date, null: false

      t.timestamps
    end
  end
end
