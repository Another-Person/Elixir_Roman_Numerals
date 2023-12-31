defmodule RomanNumerals do
  def intToRoman(num) do
    intToRomanHelper(num, "")
  end

  defp intToRomanHelper(0, stringSoFar) do
    stringSoFar
  end

  defp intToRomanHelper(num, stringSoFar) when num >= 100 do
    intToRomanHelper(num - 100, "#{stringSoFar}C")
  end

  defp intToRomanHelper(num, stringSoFar) when num >= 90 do
    intToRomanHelper(num - 90, "#{stringSoFar}XC")
  end

  defp intToRomanHelper(num, stringSoFar) when num >= 50 do
    intToRomanHelper(num - 50, "#{stringSoFar}L")
  end

  defp intToRomanHelper(num, stringSoFar) when num >= 40 do
    intToRomanHelper(num - 40, "#{stringSoFar}XL")
  end

  defp intToRomanHelper(num, stringSoFar) when num >= 10 do
    intToRomanHelper(num - 10, "#{stringSoFar}X")
  end

  defp intToRomanHelper(num, stringSoFar) when num == 9 do
    intToRomanHelper(num - 9, "#{stringSoFar}IX")
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

four = RomanNumerals.intToRoman(4)
IO.puts("Expected IV got #{four}")

five = RomanNumerals.intToRoman(5)
IO.puts("Expected V got #{five}")

eight = RomanNumerals.intToRoman(8)
IO.puts("Expected VIII got #{eight}")

nine = RomanNumerals.intToRoman(9)
IO.puts("Expected IX got #{nine}")

ten = RomanNumerals.intToRoman(10)
IO.puts("Expected X got #{ten}")

twenty_seven = RomanNumerals.intToRoman(27)
IO.puts("Expected XXVII got #{twenty_seven}")

thirty_nine = RomanNumerals.intToRoman(39)
IO.puts("Expected XXXIX got #{thirty_nine}")

forty = RomanNumerals.intToRoman(40)
IO.puts("Expected XL got #{forty}")

fifty = RomanNumerals.intToRoman(50)
IO.puts("Expected L got #{fifty}")

ninety = RomanNumerals.intToRoman(90)
IO.puts("Expected XC got #{ninety}")

hundred = RomanNumerals.intToRoman(100)
IO.puts("Expected C got #{hundred}")

twofoursix = RomanNumerals.intToRoman(246)
IO.puts("Expected CCXLVI got #{twofoursix}")
