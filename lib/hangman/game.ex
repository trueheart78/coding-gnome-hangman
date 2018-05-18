defmodule Hangman.Game do
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: []
  )

  def new_game do
    word = Dictionary.random_word |> String.codepoints
    %Hangman.Game{
      letters: word,
      turns_left: 3*length(word),
    }
  end
end
