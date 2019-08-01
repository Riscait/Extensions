import UIKit

extension UINavigationItem {

    // タイトルのローカライズ文字列キー
    @IBInspectable var localizedStringKey: String {
        get {
            return self.localizedStringKey
        }
        set {
            title = NSLocalizedString(newValue, comment: "")
        }
    }
    
    // タイトルに画像を表示する
    @IBInspectable var titleImage: UIImage {
        get {
            return self.titleImage
        }
        set {
            titleView = UIImageView(image: newValue)
        }
    }
}
