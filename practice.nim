#[
  Just some Nim lang practice
  Kyle Tamayo
  30 Jan 2026
]#

import strutils

let
  hex: int = 0xFFFFFF
  longNumber: float = 10.0e90
  million: int = 1_000_000

proc add_together(x, y: auto): auto =
  result = x + y

## Main function, not necessary but added
proc main() =
  echo "Enter number one: "
  var x: int = parseInt(readLine(stdin))
  echo "Enter number two: "
  var y: int = parseInt(readLine(stdin))

  var answer: string = intToStr(add_together(x, y))
  echo "The total is: ", answer

  echo "Hex: ", hex
  echo "Long Number: ", longNumber
  echo "Long number x 2 = ", add_together(longNumber, longNumber)
  echo "Million: ", million

main()
