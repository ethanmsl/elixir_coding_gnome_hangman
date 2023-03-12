defmodule Dictionary do

  alias Dictionary.Runtime.WordList

  @opaque t :: Server.t

  @spec start_link :: {:ok, t} | {:error, any}
  defdelegate start_link, to: Server

  @spec random_word(t) :: String.t
  defdelegate random_word(word_list), to: Server
end

