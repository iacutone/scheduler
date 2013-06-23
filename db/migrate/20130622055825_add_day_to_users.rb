class AddDayToUsers < ActiveRecord::Migration
  def change
    add_column :users, :day, :string
  end
end
