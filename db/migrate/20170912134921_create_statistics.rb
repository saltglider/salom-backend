class CreateStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.integer :sessions_today_unique
      t.integer :sessions_today_all
      t.integer :sessions_today_returning
      t.integer :users_month_unique
      t.integer :users_all_unique
      t.integer :users_all

      t.timestamps
    end
  end
end
