class CreateFutures < ActiveRecord::Migration[6.1]
  def change
    create_table :futures do |t|

      t.timestamps
    end
  end
end
