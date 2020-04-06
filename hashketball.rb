require 'pry'

def game_hash
  final_hash = {}
  final_hash[:home] = {}
    final_hash[:home][:team_name] = "Brooklyn Nets"
    final_hash[:home][:colors] = ["Black", "White"]
    final_hash[:home][:players] = [
      {:player_name => "Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
      {:player_name => "Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
      {:player_name => "Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
      {:player_name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
      {:player_name => "Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
      ]
  final_hash[:away] = {}
    final_hash[:away][:team_name] = "Charlotte Hornets"
    final_hash[:away][:colors] = ["Turquoise", "Purple"]
    final_hash[:away][:players] = [
     {:player_name => "Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1,:assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
     {:player_name => "Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
     {:player_name => "DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
     {:player_name => "Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
     {:player_name => "Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
      ]
  final_hash
end

def num_points_scored(player)
  points_scored = 0
  game_hash.each do |(location_key, attribute_hash)|
    attribute_hash[:players].each do |player_hash|
      if player_hash[:player_name] == player
        points_scored = player_hash[:points]
      end
    end
  end
  points_scored
end

def shoe_size(player)
  shoe_number = 0
  game_hash.each do |(location_key, attribute_hash)|
    attribute_hash[:players].each do |player_hash|
      if player_hash[:player_name] == player
        shoe_number = player_hash[:shoe]
      end
    end
  end
  shoe_number
end

def team_colors(team)
  game_hash.each do |(location_key, attribute_hash)|
    if attribute_hash[:team_name] == team
      return attribute_hash[:colors]
    end
  end
end 

def team_names
 names_array = []
 game_hash.each do |location_key, attribute_hash|
   names_array << attribute_hash[:team_name]
  end
  names_array
end

def player_numbers(team)
  player_numbers_array = []
  game_hash.each do |location_key, attribute_hash|
    if attribute_hash[:team_name] == team
      attribute_hash[:players].each do |player_hash|
        player_numbers_array << player_hash[:number]
      end
    end
  end
  player_numbers_array
end

def num_boards_got(player)
  boards_got = 0
  game_hash.each do |(location_key, attribute_hash)|
    attribute_hash[:players].each do |player_hash|
      if player_hash[:player_name] == player
        points_scored = player_hash[:rebounds]
      end
    end
  end
  bnoards_got
end

def player_stats(player)
  stats_hash = {}
  game_hash.each do |(location_key, attribute_hash)|
    attribute_hash[:players].each do |player_hash|
      if player_hash[:player_name] == player
        stats_hash[:assists] = player_hash[:assists]
        stats_hash[:blocks] = player_hash[:blocks]
        stats_hash[:number] = player_hash[:number]
        stats_hash[:points] = player_hash[:points]
        stats_hash[:rebounds] = player_hash[:rebounds]
        stats_hash[:shoe] = player_hash[:shoe]
        stats_hash[:slam_dunks] = player_hash[:slam_dunks]
        stats_hash[:steals] = player_hash[:steals]
        return stats_hash
      end
    end
  end
end

def big_shoe_rebounds
  board_high = 0 
  big_shoe_size = 0
  game_hash.each do |(location_key, attribute_hash)|
    attribute_hash[:players].each do |player_hash|
      if player_hash[:shoe] > big_shoe_size
        board_high = player_hash[:rebounds]
        big_shoe_size = player_hash[:shoe]
      end
    end
  end
  board_high
end

def most_points_scored
  scoring_title = "Carmelo Anthony"
  point_high = 0 
  game_hash.each do |(location_key, attribute_hash)|
    attribute_hash[:players].each do |player_hash|
      if player_hash[:points] > point_high
        point_high = player_hash[:points]
        scoring_title = player_hash[:player_name]
      end
    end
  end
  scoring_title
end

def team_points(name)
  point_total = 0
  game_hash.each do |(location_key, attribute_hash)|
    if attribute_hash[:team_name] == name
      attribute_hash[:players].each do |player_hash|
        point_total += player_hash[:points]
      end
    end
  end
  point_total
end

def winning_team
  winner = ""
  team1 = game_hash[:home][:team_name]
  team2 = game_hash[:away][:team_name]
  if team_points(team1) > team_points(team2)
    winner = team1
  elsif team_points(team2) > team_points(team1)
    winner = team2
  end
  winner
end

def player_with_longest_name
  name_title = "Carmelo Anthony"
  name_length = 0 
  game_hash.each do |(location_key, attribute_hash)|
    attribute_hash[:players].each do |player_hash|
      if player_hash[:player_name].length > name_length
        name_length = player_hash[:player_name].length
        name_title = player_hash[:player_name]
      end
    end
  end
  name_title
end

def most_steals
  steal_title = "John Stockton"
  steal_total = 0 
  game_hash.each do |(location_key, attribute_hash)|
    attribute_hash[:players].each do |player_hash|
      if player_hash[:steals] > steal_total
        steal_total = player_hash[:steals]
        steal_title = player_hash[:player_name]
      end
    end
  end
  steal_title
end

def long_name_steals_a_ton?
  if player_with_longest_name == most_steals
    return true
  else
    return false
  end
end