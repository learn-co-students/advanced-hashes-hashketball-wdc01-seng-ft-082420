# Write your code below game_hash
require 'pry'

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

#______________________________________________________________________
#Player_scores

def num_points_scored_helper
  all_players = game_hash[:home][:players] + game_hash[:away][:players]
  points_scored = all_players[0..9].map { |i| {i[:player_name] => i[:points]}}
end

def num_points_scored(player_name)
 points_scored = 0 
  num_points_scored_helper.each do |name_points|
    current_player = name_points.keys.first
    current_points = name_points.values.first
    
    if current_player == player_name
       points_scored = current_points
      
    end 
  end  
    points_scored
end

#______________________________________________________________________
#Shoe size 

def shoe_size_helper
  all_players = game_hash[:home][:players] + game_hash[:away][:players]
  player_shoe_size = all_players[0..9].map { |i| {i[:player_name] => i[:shoe]}}
end

def shoe_size(player_name)
 player_shoe = 0 
  shoe_size_helper.each do |name_points|
    current_player = name_points.keys.first
    current_shoe = name_points.values.first
    
    if current_player == player_name
       player_shoe = current_shoe
      
    end 
  end  
    player_shoe
end

#________________________________________________________________
#Team colors

def team_colors(team_name)
  if 
    team_name == game_hash[:home][:team_name]
    game_hash[:home][:colors]
   elsif
    team_name == game_hash[:away][:team_name]
    game_hash[:away][:colors]
  end  
end  

#_______________________________________________________________
#Team names 

def team_names
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end
#_______________________________________________________________
#Player number helpers


def home_player_number_helper
  game_hash[:home][:players][0..4].map  { |i| i[:number]}
end  

def away_player_number_helper
  game_hash[:away][:players][0..4].map  { |i| i[:number]}
end 

#___________________________________________________________________
#Player numbers 

def player_numbers(team_name)
  if 
    game_hash[:home][:team_name] == team_name
    home_player_number_helper
  elsif
    game_hash[:away][:team_name] == team_name
    away_player_number_helper
  end
end

#___________________________________________________________________
#Player stats test

def all_players_stats
  all_players = game_hash[:home][:players] + game_hash[:away][:players]
end

def player_stats(player_name)
  stats = {}
  all_players_stats.each do |stat_hash| 
    if
      player_name == stat_hash.values.first
      
      stats = stat_hash
    end  
  end 
  stats
    
end

#________________________________________________________________
#Big shoe rebounds helpers

def all_players_stats_rebounds
  
  all_players = game_hash[:home][:players] + game_hash[:away][:players]
  shoe_size = all_players[0..9].map { |i| {i[:shoe] => i[:rebounds]}}
  
end 


#________________________________________________________________
#Big shoe rebounds

def big_shoe_rebounds
  biggest_shoe = 0 
  rebounds = 0
  
  all_players_stats_rebounds.each do |stat_hash| 

    current_shoe_size = stat_hash.keys.first
    current_rebounds = stat_hash.values.first
    if current_shoe_size >= biggest_shoe
      biggest_shoe = current_shoe_size
      rebounds = current_rebounds
    end  
    
  end 
  rebounds
end





  
  
  
  
  