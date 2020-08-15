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

game_hash
def num_points_scored (player_name)
  score_results = game_hash.map do |home_away, team_info|
    team_info.map do |key,array|
      if key == :players
        array.map do |hash|
          hash.map do |key, value|
            if key == :player_name && value == player_name
              hash.map do |key,value|
                if key == :points
                  player_name = value
                end
              end
            end
          end
        end
      end
    end
  end
  player_name
end

num_points_scored("Bismack Biyombo")
# Write code here

def shoe_size(player_name)
  shoe_result = game_hash.map do |home_away,team_info|
    team_info.map do |key, array|
      if key == :players 
        array.map do |hash|
          hash.map do |key,value|
            if key == :player_name && value == player_name
              hash.map do |key, value|
                if key == :shoe
                  player_name = value
                end
              end
            end
          end
        end
      end
    end
  end
  player_name
end

shoe_size("Bismack Biyombo")

def shoe_size(player_name)
  shoe_result = game_hash.map do |home_away,team_info|
    team_info.map do |key, array|
      if key == :players 
        array.map do |hash|
          hash.map do |key,value|
            if key == :player_name && value == player_name
              hash.map do |key, value|
                if key == :shoe
                  player_name = value
                end
              end
            end
          end
        end
      end
    end
  end
  player_name
end

shoe_size("Bismack Biyombo")

def team_colors (team_name)
#returns an array of the team's colors
color_results = game_hash.map do |ha_key, teaminfo_hash|
    teaminfo_hash.map do |key, value|
     if key == :team_name && value == team_name then
       teaminfo_hash.map do |key, value|
         if key == :colors 
           team_name = value
          end
        end
      end
    end
  end
  team_name
end

team_colors("Brooklyn Nets")

def team_names
  team_names =[]
  game_hash.map do |key, value|
    value.map do |key, value|
      if key == :team_name 
       team_names << value
      end
    end
  end
  team_names
end

team_names

def player_numbers (team_name)
  num_array = []
  game_hash.map do |home_away, stats_keys|
    stats_keys.map do |key, value|
      if key == :team_name && value == team_name
        stats_keys.map do |key,hash|
          if key == :players 
            hash.map do |array|
             array.map do |key, value|
               if key == :number 
                 num_array << value
                end
              end
            end
          end
        end
      end
    end 
  end
  num_array
end

player_numbers ("Brooklyn Nets")

def player_stats(player_name)
  game_hash.map do |home_away, stats_info|
    stats_info.map do |key,value|
      if key == :players 
        value.map do |array|
          array.map do |key,value|
            if key == :player_name && player_name == value
              player_name = array
            end
          end
        end
      end
    end
  end
  player_name
end

player_stats("Bismack Biyombo")

def big_shoe_rebounds
  max_value = 0
  shoe_size = 0
  game_hash.map do |key,value|
    value.map do |key,value|
      if key == :players 
        value.map do |array|
          array.map do |key,value|
            if key == :shoe && max_value < value.to_i 
              max_value = value
                array.map do |key,value|
                  if key == :rebounds 
                    shoe_size = value
                  end
              end
            end
          end
        end
      end
    end
  end
  shoe_size
end

big_shoe_rebounds
