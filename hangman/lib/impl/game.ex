defmodule Hangman.Impl.Game do

  # this struct is connected to module and called via module's name
  @type t :: %__MODULE__{
    turns_left: integer,
    game_state: Hangman.state,
    letters: list(String.t),
    used: MapSet.t(String.t)
  }
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    used: MapSet.new()
  )

  def new_game do
    %__MODULE__{
      letters: Dictionary.random_word |> String.codepoints,
    }
  end

end
