import UIKit

// (String) -> Void
func logToConsole(_ msg: String) {
  print(msg)
}

func logToFile(_ msg: String) {
  print(msg)
}

func logToWindow(_ msg: String) {
  print(msg)
}

func getValue(from number: Int) -> String {
  // First determine the result
  let result = "Something \(number)"
  return result
}


getValue(from: 8)
