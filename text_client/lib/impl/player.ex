defmodule TextClient.Impl.Player do

  @typep game :: Hangman.game
  @typep tally :: Hangman.tally
  @typep state :: {game, tally}

  @spec start() :: :ok
  def start() do
    game = Hangman.new_game
    tally = Hangman.tally(game)
    interact({ game, tally})
  end



  @spec interact(state) :: :ok

  def interact({_game, _tally = %{game_state: :won}}) do
    IO.puts "You won!"
  end

  def interact({_game, tally = %{game_state: :lost}}) do
    IO.puts "You lost.  The word was ${tally.letters |> Enum.join}"
  end


  def interact({game, tally}) do
    IO.puts feedback_for(tally)
    # feedback
    # display current word
    # get next guess
    # make move
    # interact({game, tally})
  end

  def feedback_for(tally = %{ game_state: :initializing}) do
    IO.puts "Welcome to Hangman! There are #{tally.letters |> length} letters in our word."
  end

  def feedback_for(tally = %{ game_state: :good_guess}) do
    IO.puts "Good guess!"
  end

  def feedback_for(tally = %{ game_state: :bad_guess}) do
    IO.puts "Bad guess!"
  end

  def feedback_for(tally = %{ game_state: :already_used}) do
    IO.puts "You already used that letter!"
  end

end
