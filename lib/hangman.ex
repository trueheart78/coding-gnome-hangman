defmodule Hangman do
  import Inflex

  def hello do
    IO.puts Dictionary.random_word()
  end
end
