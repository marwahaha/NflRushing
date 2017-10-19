# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
players_hash = JSON.parse(File.read(File.join(Rails.root, 'db', 'imports', 'rushing.json')))

Player.transaction do
  players_hash.each do |player_hash|
    yards = player_hash['Yds'].to_s.gsub(',', '')
    games = (player_hash['Att'] / player_hash['Att/G']).round
    longest_rush = player_hash['Lng'].to_s.match(/\d+/)[0]
    longest_touchdown = player_hash['Lng'].to_s =~ /T/ ? true : false

    player_obj = {
      :name => player_hash['Player'],
      :team => player_hash['Team'],
      :position => player_hash['Pos'],
      :attempts => player_hash['Att'],
      :touchdowns => player_hash['TD'],
      :first_touchdown_rushes => player_hash['1st'],
      :twenties_yards_more_rushes => player_hash['20+'],
      :forties_yards_more_rushes => player_hash['40+'],
      :rushing_fumbles => player_hash['FUM'],
      :yards => yards,
      :games => games,
      :longest_rush => longest_rush,
      :longest_touchdown => longest_touchdown
    }

    Player.create!(player_obj)
  end
end