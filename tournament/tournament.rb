class Team

  attr_reader :name

  def initialize(name)
    @name = name
    @matches_played = 0
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def win
    @wins += 1
  end

  def loss
    @losses += 1
  end

  def draws
    @draws += 1
  end

  def play_match
    @matches_played += 1
  end

  def play
    "Play!" 
  end

end

class Tournament

  WIN_POINTS = 3
  DRAW_POINTS = 1

  def initialize(input)
    @input = input
    @participants = {}
  end

  def parsed_initial_game_input
    @games = @input.split("\n")
  end

  def parsed_specific_game_results
    parsed_initial_game_input.each do |game|
      games.split(";")
    end
  end

  def play_team
    Team.play
  end

end