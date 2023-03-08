defmodule Dictionary do
  @moduledoc """
  Dictionary module
  """

  @doc """
  Exploring syntax: pattern matching & piping
  Not a useful component of the larger program
  """
  def wordlistprint do
    {:ok, words} = File.read("assets/words.txt")
    String.split(words) |> IO.puts
  end

  @doc """
  returns a list of words -- cannonical word list for now
  assumes sourcing from a specific file in relative path
  """
  def word_list do
    {:ok, words} = File.read("assets/words.txt")
    String.split(words)
  end
end
