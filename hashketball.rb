require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(player)
  game_hash.each { |key, value|
    value[:players].each { |i|
      if i[:player_name] == player
        return i[:points]
      end 
    }
  }
end

def shoe_size(player)
  game_hash.each { |key, value|
    value[:players].each { |i|
      if i[:player_name] == player
        return i[:shoe]
      end 
    }
  }
end

def team_colors(team)
  game_hash.each { |key, value|
    if value[:team_name] == team
      return value[:colors]
    end
  }
end

def team_names
  [game_hash[:home][:team_name],game_hash[:away][:team_name]]
end

def player_numbers(team)
  team_numbers = []
  
  game_hash.each { |key, value|
    if value[:team_name] == team
      value[:players].each { |i|
        team_numbers << i[:number]
      }
    end
  }
  team_numbers
end

def player_stats(player)
  game_hash.each { |key, value|
    value[:players].each { |i|
      if i[:player_name] == player
        return i
      end 
    }
  }
end

def big_shoe_rebounds
  big_shoe = 0
  rebounds = 0
  
  game_hash.each { |key, value|
    value[:players].each { |i|
      if i[:shoe] > big_shoe
        big_shoe = i[:shoe]
        rebounds = i[:rebounds]
      end 
    }
  }
  rebounds
end

def most_points_scored
  points = 0
  name = ""
  
  game_hash.each { |key, value|
    value[:players].each { |i|
      if i[:points] > points
        points = i[:points]
        name = i[:player_name]
      end 
    }
  }
  name
end

def winning_team
  home_points = 0
  away_points = 0
  winner = "Tie"
  
  game_hash[:home][:players].each { |i|
    home_points += i[:points]
  }
  
  game_hash[:away][:players].each { |i|
    away_points += i[:points]
  }
  
  if home_points > away_points
    winner = game_hash[:home][:team_name]
  elsif away_points > home_points
    winner = game_hash[:away][:team_name]
  end
  winner
end

def player_with_longest_name
  characters = 0
  name = ""
  
  game_hash.each { |key, value|
    value[:players].each { |i|
      if i[:player_name].size > characters
        characters = i[:player_name].size
        name = i[:player_name]
      end 
    }
  }
  name
end

def long_name_steals_a_ton?
  steals = 0
  stealer_name = ""
  
  game_hash.each { |key, value|
    value[:players].each { |i|
      if i[:steals] > steals
        steals = i[:steals]
        stealer_name = i[:player_name]
      end 
    }
  }
  stealer_name == player_with_longest_name
end





















