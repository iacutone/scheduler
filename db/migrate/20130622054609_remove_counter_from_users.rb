class RemoveCounterFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :counter
  end

  def down
    add_column :users, :counter, :integer
  end
end
