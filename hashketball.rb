require 'pry'


def game_hash
  game_hash = {

    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1

        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7

        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15

        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5

        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },

    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien"	=> {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }


end

def num_points_scored(player_name)
  player_points = 0
  game_hash.keys.each do |location|
    game_hash[location][:players].keys.each do |name|
      if player_name == name
        player_points = game_hash[location][:players][name][:points]
      end
    end
  end
  return player_points
end

def shoe_size(player_name)
  shoe_size = 0
  game_hash.keys.each do |location|
    game_hash[location][:players].keys.each do |name|
      if player_name == name
        shoe_size = game_hash[location][:players][name][:shoe]
      end
    end
  end
  return shoe_size

end

def team_colors(team_name)
  game_hash.keys.each do |location|
    game_hash[location].each do |key, value|
      if value == team_name
        return game_hash[location][:colors]
      end
    end
  end
end

def team_names
  teams_array = []
  game_hash.keys.each do |location|
    game_hash[location].each do |info, value|
      if info == :team_name
        teams_array.push(game_hash[location][:team_name])
      end
    end
  end
  teams_array
end

def player_numbers(team)
  team_numbers = []
  game_hash.keys.each do |location|
    game_hash[location].values.each do |info|
      if info == team
        game_hash[location][:players].values.each do |stat|
          team_numbers.push(stat[:number])
        end
      end
    end
  end
return team_numbers
end

def player_stats(player_name)
  game_hash.keys.each do |location|
    game_hash[location][:players].each do |player, data|
      if player == player_name
        return data
      end
    end
  end
end

def big_shoe_rebounds
  shoe_sizes = {}
  game_hash.keys.each do |location|
    game_hash[location][:players].each do |player, stats|
      shoe_sizes[stats[:shoe]] = stats[:rebounds]
    end
  end
  shoe_sizes[shoe_sizes.keys.max]
end
big_shoe_rebounds
