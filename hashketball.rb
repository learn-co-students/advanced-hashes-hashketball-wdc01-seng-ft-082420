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

def num_points_scored (player_name) #we know that we are looking for a player's name
#binding.pry
game_hash.each do |team, teams_info|
  #team = home #teams_info = all of the info that falls under the home symbol
  #we then have to search a level deeper into teams_info and go into the players symbol to get the array of the single_player
  teams_info[:players].each do |single_player| #single_player will give me all the stats from one player
# binding.pry
    if player_name == single_player[:player_name]
#now that we are in the array of the single player, we have to match the player's name with the name in the array
      return single_player[:points]
    end
  end
 end
end


def shoe_size(player_name)
game_hash.each do |team, teams_info|
  teams_info[:players].each do |single_player|
    if player_name == single_player[:player_name]
      return single_player[:shoe]
    end
  end
end
end

def team_colors(team_name)
 game_hash.each do |team, teams_info|
#binding.pry
    if team_name == teams_info[:team_name] #team_name will print out the actual team name
       return teams_info[:colors] #what I had before was team_color and it wasn't lining up because it was being defined before.
    end
  end
end

def team_names
  teams_array = []
  game_hash.each do |team, teams_info|
    # binding.pry
    # if team_name == teams_info[:team_name]
    teams_array << teams_info[:team_name]
#    binding.pry
   end
   teams_array
end

def player_numbers(team_name)
#  binding.pry
  home_numbers = []
  away_numbers = []
  game_hash.each do |team, teams_info|
  #binding.pry
    if team_name == teams_info[:team_name]
      teams_info[:players].each do |single_player|
     #binding.pry
       home_numbers << single_player[:number]
       away_numbers << single_player[:number]
     end
    end
    end
 home_numbers
 away_numbers
 end

def player_stats(player) #Only wants Jeff Adrien, always check via pry to see what the lab wants
  game_hash.each do |team, teams_info|
    teams_info[:players].each do |player_info| #player_info is giving me the stats but how do I return this?
      if player == player_info[:player_name] #always include the argument into if statement
        return player_info
      end
    end
  end
end

def big_shoe_rebounds #biggest sheo size is 19 and that person has 11 rebounds
   biggest_shoe = 0
   most_rebounds = 0
    game_hash.each do |team, team_info|
        team_info[:players].each do |player_stats|
      #binding.pry
      if biggest_shoe < player_stats[:shoe]
        #I didn't need the && most_rebounds < player_stats[:rebounds] because I just
        #need to figure out which player has the largest shoe size and from there I can find out their rebounds 
        most_rebounds = player_stats[:rebounds]
        biggest_shoe = player_stats[:shoe]
#        binding.pry
      end
    end
end
most_rebounds
end
