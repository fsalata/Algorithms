import Foundation

public func timeTest(_ operation: () -> ()) {
    let start = CFAbsoluteTimeGetCurrent()
    operation()
    let diff = CFAbsoluteTimeGetCurrent() - start
    print("\n====== Took \(diff) seconds ======")
}

//public func timeTest<Element: Numeric & Comparable>(_ operation: () -> [Element]?) -> String {
//    let start = CFAbsoluteTimeGetCurrent()
//    _ = operation()
//    let diff = CFAbsoluteTimeGetCurrent() - start
//    return "Took \(diff) seconds"
//}
