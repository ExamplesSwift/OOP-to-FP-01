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

enum Logger {
  case console, file, window
  
  var print: (String) -> Void {
    switch self {
    case .console:
      return logToConsole
    case .file:
    return logToFile
      case .window:
      return logToWindow
    }
  }
  
}

func getValue(from number: Int, logger: Logger) -> String {
  // First determine the result
  let result = "Something \(number)"
  
  logger.print(result)
  
  return result
}

getValue(from: 8, logger: .console)
