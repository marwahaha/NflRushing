class AddIndexesForPlayers < ActiveRecord::Migration
  def change
    add_index :players, :name
    add_index :players, :yards
    add_index :players, :longest_rush
    add_index :players, :touchdowns
  end
end
