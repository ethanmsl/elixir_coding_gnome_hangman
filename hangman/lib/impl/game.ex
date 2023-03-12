defmodule Hangman.Impl.Game do

  # this struct is connected to module and called via module's name
  @type t :: %__MODULE__{
    turns_left: integer,
    game_state: Type.state,
    letters: list(String.t),
    used: MapSet.t(String.t)
  }
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    used: MapSet.new()
  )

  @spec new_game() :: t
  def new_game do
    %__MODULE__{
      letters: Dictionary.random_word |> String.codepoints,
    }
  end

  # *Terrible, Terrible* "testing" strategy
  #  from "coding gnome" -- which is to copy one function, change it, and test that
  # no guarnatees that they don't later diverge
  @spec new_game(String.t) :: t
  def new_game(word) do
    %__MODULE__{
      letters: word |> String.codepoints,
    }
  end
end
