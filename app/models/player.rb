class Player < ActiveRecord::Base
  #instance method
  self.per_page = 15

  def attempts_per_game
    (self.attempts.to_f / self.games).round(1)
  end

  def yards_per_attempt
    (self.yards.to_f / self.attempts).round(1)
  end

  def yards_per_game
    (self.yards.to_f / self.games).round(1)
  end

  def rushing_first_down_percentage
    (self.first_touchdown_rushes.to_f / self.attempts * 100).round(1)
  end

  def self.to_csv(players)
    columns = [
      'name',
      'team',
      'position',
      'attempts_per_game',
      'attempts',
      'yards_per_attempt',
      'yards_per_game',
      'touchdowns',
      'longest_rush',
      'longest_touchdown',
      'first_touchdown_rushes',
      'rushing_first_down_percentage',
      'twenties_yards_more_rushes',
      'forties_yards_more_rushes',
      'rushing_fumbles'
    ]
    
    require 'csv'
    CSV.generate(:headers => true) do |csv|
      csv << columns
      players.each do |player|
        csv << columns.map { |column| player.send(column) }
      end
    end
  end

  #class method
  def self.search(name)
    where('name LIKE ?', "%#{name}%")
  end
end
