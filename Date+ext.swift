import Foundation

extension Date {
    
    var longStyleString: String {
        return DateFormatter.longDateFormatter.string(from: self)
    }
}
