class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :position
      t.integer :attempts
      t.integer :yards
      t.integer :games
      t.integer :touchdowns
      t.integer :longest_rush
      t.integer :first_touchdown_rushes
      t.integer :twenties_yards_more_rushes
      t.integer :forties_yards_more_rushes
      t.integer :rushing_fumbles
      t.boolean :longest_touchdown

      t.timestamps null: false
    end
  end
end
