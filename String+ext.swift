import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localized(tableName: String) -> String {
        return NSLocalizedString(self, tableName: tableName, comment: "")
    }
}
