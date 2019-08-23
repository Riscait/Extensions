import UIKit

extension UIButton {
    // ローカライズ文字列キー
    @IBInspectable var localizedStringKey: String {
        get {
            return self.localizedStringKey
        }
        set {
            setTitle(NSLocalizedString(newValue, comment: ""), for: .normal)
        }
    }
    
    // ボタンのアイコンをLeading(右側)に表示する
    func iconToRight() {
        if #available(iOS 11.0, *) {
            contentHorizontalAlignment = .leading
        } else {
            contentHorizontalAlignment = .right
        }
        semanticContentAttribute =
            UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft
            ? .forceLeftToRight : .forceRightToLeft
    }
}
