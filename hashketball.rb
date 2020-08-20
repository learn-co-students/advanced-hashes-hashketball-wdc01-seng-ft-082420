require "pry"
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

def all_players
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  home_players + away_players
end

def num_points_scored(player_name)
  player_stats = all_players.find do |player|
      player_name == player[:player_name]
      end
    player_stats[:points]
end


def shoe_size(player_name)
  player_stats = all_players.find do |player|
      player_name == player[:player_name]
      end
    player_stats[:shoe]
end

def team_colors(team)
  home_colors = game_hash[:home][:colors]
  away_colors = game_hash[:away][:colors]
  #all_colors = home_colors + away_colors

    game_hash.each do |key, value|

      if team == value[:team_name]
        return value[:colors]

        end
    end
end


def team_names

teams = []
  game_hash.each do |team, chars|
      teams.push(game_hash[team][:team_name])
  end
  return teams

#binding.pry

end
#build method that operates on game_hash to return an array of team names

def player_numbers(team_name)
  player_numbers = []
  charlotte_numbers = []
  game_hash.each do |teams,team_info|
    #binding.pry
    if team_name == game_hash[teams][:team_name]

        game_hash[teams][:players].each do |stats|
          player_numbers << stats[:number]
        end
    end
  #binding.pry
  end
  player_numbers.sort
end



#takes argument of team name and returns  array of jersey numbers from each team

def player_stats(player_name)

  player_stats = all_players.find do |player|
      player_name == player[:player_name]
      end
    player_stats
  end
# player_stats = {}
#        game_hash.each do |team, team_info|
#           if player_name == team_info[:players]
#               binding.pry
#               player_stats == team_info[:players]
#           end
#         #binding.pry
#       end

def big_shoe_rebounds
  shoe = 0
  rebounds = 0
    all_players.each do |player|
      if shoe < player[:shoe]
        rebounds = player[:rebounds]
        shoe = player[:shoe]

      end
    end
    rebounds
end
