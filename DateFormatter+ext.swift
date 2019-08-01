import Foundation

extension DateFormatter {
    
    /// e.g. "en_US": June 23, 2020, "ja_JP": 2020年6月23日
    static let longDateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateStyle = .long
        df.timeStyle = .none
        return df
    }()
}
