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

protocol Logger {
  func print(_ msg: String)
}

class ConsoleLogger : Logger {
  func print(_ msg: String) {
    logToConsole(msg)
  }
}

class FileLogger : Logger {
  func print(_ msg: String) {
    logToFile(msg)
  }
}

class WindowLogger : Logger {
  func print(_ msg: String) {
    logToWindow(msg)
  }
}

// Now we have log before show the result
func getValue(from number: Int, loggerType: Logger) -> String {
  // First determine the result
  let result = "Something \(number)"
  loggerType.print(result)
  
  return result
}

getValue(from: 8, loggerType: ConsoleLogger())
