#[
Just some Nim lang practice
Kyle Tamayo
30 Jan 2026
]#
import strutils

# Random constants
let hex: int = 0xFFFFFF
let longNumber: float = 10.0e90
let million: int = 1_000_000

proc add_together(x: int, y: int): int =
  ## Add two numbers
  result = x + y

proc main() =
  ## Main function, not necessary but added
  echo "Enter number one: "
  var x: int = parseInt(readLine(stdin)) ## First input
  echo "Enter number two: "
  var y: int = parseInt(readLine(stdin)) ## Second input

  var answer: string = intToStr(add_together(x, y)) ## Answer: converted to string
  echo "The total is: ", answer

  echo "Hex: ", hex
  echo "Long Number: ", longNumber
  echo "Million: ", million

main()
