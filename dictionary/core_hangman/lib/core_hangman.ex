defmodule CoreHangman do
  @type state:: :initializing | :won | :lost | :good_guess | :bad_guess | :already_used
  @type game :: any
  @type tally :: %:
    turns_left: integer,
    game_state: state,
    letters: list(String.t),
    used: list(String.t)
}

  @moduledoc """
  Core logic to our "hangman" game.
  (dark theme!)
  """

  @doc """
  instantiates ... a new game
  """
  @spec new_game :: game
  def new_game do
  end

  @doc """
  takes input from player and relays to game representation
  """
    @spec make_guess(game, String.t) :: { game, tally }
  def play_game(game, guess) do
  end
end
