defmodule Dictionary do
  def wordlist do
    {:ok, words} = File.read("assets/words.txt")
    String.split(words) |> IO.puts
  end
end
