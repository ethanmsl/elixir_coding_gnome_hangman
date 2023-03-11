defmodule Hangman do

  alias Hangman.Impl.Game

  @type   state :: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used
  @opaque game  :: Game.t
  @type   tally :: %{
    turns_left: integer,
    game_state: state,
    letters: list(String.t),
    used: list(String.t)
}

  # @moduledoc """
  # Core logic to our "hangman" game.
  # (dark theme!)
  # """
  #
  # @doc """
  # instantiates ... a new game
  # """
  @spec new_game() :: game
  defdelegate new_game, to: Game
  # def new_game do
  #   Game.new_game()
  # end

  @doc """
  takes input from player and relays to game representation
  """
  # @spec make_guess(game, String.t):: { game, tally }
  def play_game(game, guess) do
  end
end
