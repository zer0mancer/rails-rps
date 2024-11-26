class GameController < ApplicationController



  def play_rock_paper_scissors(player_choice)
    play = ["rocks", "papers", "scissors"]
    @computer_choice = play.sample
  
    if player_choice == @computer_choice
      results = "We tied"
    elsif (player_choice == "rocks" && @computer_choice == "scissors") ||
          (player_choice == "papers" && @computer_choice == "rocks") ||
          (player_choice == "scissors" && @computer_choice == "papers")
      results = "We won"
    elsif play.include?(player_choice)
      results = "We lost"
    else
      results = "Invalid choice. Please choose Rock, Paper, or Scissors."
    end
  
    return results 
  end
  

  def rocks
    @player_choice = "rocks"
  
    @results = play_rock_paper_scissors(@player_choice)
    render( {:template => "game_templates/rocks"})
  end

  def papers
    @player_choice = "papers"
  
   @results = play_rock_paper_scissors(@player_choice)
    render({ :template => "game_templates/papers"})
  end

  def scissors
    @player_choice = "scissors"

    @results = play_rock_paper_scissors(@player_choice)
    render({ :template => "game_templates/scissors"})
  end

  def homepage
    render({:template => "layouts/homepage"})
  end

end
