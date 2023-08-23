defmodule RomanNumerals do
  def IntToRoman(num) do
    IntToRomanHelper(num, "")
  end

  defp IntToRomanHelper(0, stringSoFar) do
    stringSoFar
  end

  defp IntToRomanHelper(num, stringSoFar) when num > 5 do
    IntToRomanHelper(num - 5, "#{stringSoFar}V")
  end

  defp IntToRomanHelper(num, stringSoFar) when num == 4 do
    IntToRomanHelper(num - 4, "#{stringSoFar}IV")
  end

  defp IntToRomanHelper(num, stringSoFar) when num > 1 do
    IntToRomanHelper(num - 1, "#{stringSoFar}I")
  end

end

one = RomanNumerals.IntToRoman(1)
IO.puts("Expected I got #{one}")

three = RomanNumerals.IntToRoman(3)
IO.puts("Expected III got #{three}")

four = RomanNumerals.IntToRoman(4)
IO.puts("Expected IV got #{four}")

five = RomanNumerals.IntToRoman(5)
IO.puts("Expected V got #{five}")

eight = RomanNumerals.IntToRoman(8)
IO.puts("Expected VIII got #{eight}")
