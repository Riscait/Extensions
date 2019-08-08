import UIKit

extension UITextField {
    // プレースホルダーのローカライズ文字列キー
    @IBInspectable var placeholerLocalizedStringKey: String {
        get {
            return self.placeholerLocalizedStringKey
        }
        set {
            placeholder = NSLocalizedString(newValue, comment: "")
        }
    }
}
