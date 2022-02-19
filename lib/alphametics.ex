defmodule Alphametics do
  @type puzzle :: binary
  @type solution :: %{required(?A..?Z) => 0..9}

  @doc """
  Takes an alphametics puzzle and returns a solution where every letter
  replaced by its number will make a valid equation. Returns `nil` when
  there is no valid solution to the given puzzle.

  ## Examples

    iex> Alphametics.solve("I + BB == ILL")
    %{?I => 1, ?B => 9, ?L => 0}

    iex> Alphametics.solve("A == B")
    nil
  """
  @spec solve(puzzle) :: solution | nil
  def solve(_puzzle) do
    puzzle = "I + BB == ILL"

    sides = String.split(puzzle, "==", trim: true)
    terms = String.split(hd(sides), "+", trim: true) ++ tl(sides)

    IO.inspect(terms)
  end
end
