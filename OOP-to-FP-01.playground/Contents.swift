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

// Now we have log before show the result
func getValue(from number: Int, loggerType: Int) -> String {
  // First determine the result
  let result = "Something \(number)"
  
  switch loggerType {
  case 1:
    logToConsole(result)
  case 2:
    logToFile(result)
  case 3:
    logToWindow(result)
  default:
    break
  }
  
  return result
}

getValue(from: 8, loggerType: 1)
