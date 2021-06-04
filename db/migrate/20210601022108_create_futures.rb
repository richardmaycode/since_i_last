class CreateFutures < ActiveRecord::Migration[6.1]
  def change
    create_table :futures do |t|
      t.datetime :launch_date, null: false
      t.timestamps
    end
  end
end
