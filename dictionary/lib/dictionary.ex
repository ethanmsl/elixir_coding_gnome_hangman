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
    String.split(words) |> IO.puts
  end

  @doc """
  returns a list of words -- cannonical word list for now
  assumes sourcing from a specific file in relative path
  """
  def word_list do
    "assets/words.txt"
    |> File.read!()
    |> String.split()
  end

  @doc """
  returns a rnadom word from the list given by `word_list/0`
  """
  def random_word do
    word_list() 
    |> Enum.random()
  end

end
