import UIKit

extension UIColor {
    
    /// Generate UIColor from Hex
    ///
    /// - Parameters:
    ///   - hex: Hexadecimal color code
    ///   - alpha: Opacity
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        
        guard hex.count == 6 || hex.count == 7 else { fatalError("The number of characters in Hex is invalid.") }
        // "#" May or may not be present
        let validHex = hex.hasPrefix("#") ? String(hex.suffix(6)) : hex
        
        let v = Int("000000" + validHex, radix: 16) ?? 0
        let r = CGFloat(v / Int(powf(256, 2)) % 256) / 255
        let g = CGFloat(v / Int(powf(256, 1)) % 256) / 255
        let b = CGFloat(v / Int(powf(256, 0)) % 256) / 255
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha, 0), 1))
    }
}
