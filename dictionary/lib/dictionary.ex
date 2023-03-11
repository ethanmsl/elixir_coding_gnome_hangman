defmodule Dictionary do
  @moduledoc """
  Dictionary module
  """

  @doc """
  Exploring syntax: pattern matching & piping
  Not a useful component of the larger program
  """
  def word_list_print do
    {:ok, words} = File.read("assets/words.txt")
    words |> String.split |> IO.puts
  end

  # macro inclusion of the word list in our module
  @word_list "assets/words.txt"
    |> File.read!()
    |> String.split()

  @doc """
  returns a rnadom word from the list given by `word_list/0`
  """
  def random_word do
    @word_list
    |> Enum.random()
  end

end
