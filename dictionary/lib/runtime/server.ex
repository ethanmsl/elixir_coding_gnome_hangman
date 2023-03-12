defmodule Dictionary.Runtime.Server do

  @type t :: pid()
  alias Dictionary.Impl.WordList

  @me __MODULE__

  def start_link do
    # `name: <atom>` registers pid as <atom>
    Agent.start_link(&WordList.word_list/0, name: @me)
    # returns {:ok/:error, pid}
  end

  def random_word() do
    # **strong** coupling of `random_word()` to `start_link()`
    # by way of hard-coded (dynamic) pid reference
    Agent.get(@me, &WordList.random_word/1)
  end
end
