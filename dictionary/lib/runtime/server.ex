defmodule Dictionary.Runtime.Server do

  @type t :: pid()
  @me __MODULE__
  use Agent
  alias Dictionary.Impl.WordList



  def start_link(_) do
    # `name: <atom>` registers pid as <atom>
    Agent.start_link(&WordList.word_list/0, name: @me)
    # returns {:ok/:error, pid}
  end

  def random_word() do

    # ~1/3 chance of crashing the module agent
    if :random.uniform < 0.33 do
      Agent.get(@me, fn _ -> exit(:boom) end)
    end

    # **strong** coupling of `random_word()` to `start_link()`
    # by way of hard-coded (dynamic) pid reference
    Agent.get(@me, &WordList.random_word/1)
  end
end
