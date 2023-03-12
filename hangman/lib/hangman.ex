defmodule Hangman do

  alias Hangman.Impl.Game
  alias Hangman.Type

  @opaque game  :: Game.t

  @spec new_game() :: game
  defdelegate new_game, to: Game

  @spec make_move(game, String.t) :: { game, Type.tally }
  defdelegate make_move(game, guess), to: Game

  @doc """
  takes input from player and relays to game representation
  """
  # @spec make_guess(game, String.t):: { game, tally }
  def play_game(game, guess) do
  end
end
