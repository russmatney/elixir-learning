defmodule MyFizzBuzz do
  def sayHi(), do: IO.puts("hi")

  def fizz(), do: IO.puts("fizz")
  def buzz(), do: IO.puts("buzz")
  def fizzAndBuzz(), do: IO.puts("fizzbuzz")

  def divBy(num, x), do: rem(x, num) == 0

  def handle(x) do
    by3 = divBy(3, x)
    by5 = divBy(5, x)
    cond do
      by3 && by5 ->
        fizzAndBuzz()
      by3 ->
        fizz()
      by5 ->
        buzz()
      true -> IO.puts(x)
    end
    x
  end

  def fizzbuzz(count) do
    for x <- 1..count do
      handle(x)
    end
  end

  def recursiveFizzbuzz({count, max}) when count == max do
    IO.puts("done")
  end

  def recursiveFizzbuzz({count, max}) do
    recursiveFizzbuzz({handle(count + 1), max})
  end

end

MyFizzBuzz.sayHi()
MyFizzBuzz.fizzbuzz(16)
MyFizzBuzz.recursiveFizzbuzz({0, 15})
