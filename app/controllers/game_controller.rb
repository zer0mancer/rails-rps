class GameController < ApplicationController

  def play_rock_paper_scissors(player_choice)
    play = ["rock", "paper", "scissors"]
    @computer_choice = play.sample
  
    if player_choice == @computer_choice
      result = "We tied"
    elsif (player_choice == "rock" && @computer_choice == "scissors") ||
          (player_choice == "paper" && @computer_choice == "rock") ||
          (player_choice == "scissors" && @computer_choice == "paper")
      result = "We won"
    elsif choices.include?(player_choice)
      result = "We lost"
    else
      result = "Invalid choice. Please choose Rock, Paper, or Scissors."
    end
  
    return result 
  end
  

  def rocks
    @player_choice = "rock"
  
    @results = play_rock_paper_scissors(@player_choice)
    render( {:template => "game_templates/rocks"})
  end

  def papers
    @player_choice = "paper"
  
   @results = play_rock_paper_scissors(@player_choice)
    render({ :template => "game_templates/papers"})
  end

  def scissors
    @player_choice = "scissors"

    @results = play_rock_paper_scissors(@player_choice)
    render({ :template => "game_templates/scissors"})
  end

end
