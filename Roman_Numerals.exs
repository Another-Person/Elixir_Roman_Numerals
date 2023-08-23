defmodule RomanNumerals do
  def intToRoman(num) do
    intToRomanHelper(num, "")
  end

  defp intToRomanHelper(0, stringSoFar) do
    stringSoFar
  end

  defp intToRomanHelper(num, stringSoFar) when num >= 5 do
    intToRomanHelper(num - 5, "#{stringSoFar}V")
  end

  defp intToRomanHelper(num, stringSoFar) when num == 4 do
    intToRomanHelper(num - 4, "#{stringSoFar}IV")
  end

  defp intToRomanHelper(num, stringSoFar) when num >= 1 do
    intToRomanHelper(num - 1, "#{stringSoFar}I")
  end

end

one = RomanNumerals.intToRoman(1)
IO.puts("Expected I got #{one}")

three = RomanNumerals.intToRoman(3)
IO.puts("Expected III got #{three}")

four = RomanNumerals.intToRoman(4)
IO.puts("Expected IV got #{four}")

five = RomanNumerals.intToRoman(5)
IO.puts("Expected V got #{five}")

eight = RomanNumerals.intToRoman(8)
IO.puts("Expected VIII got #{eight}")
