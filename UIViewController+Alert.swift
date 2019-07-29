import UIKit

extension UIViewController {
    /// タイトルとメッセージ（それぞれ省略可能）を表示して了承を求めるシンプルなアラートを表示する
    func showAlert(title: String?, message: String?, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .default, handler: nil)
        alert.addAction(ok)
        (navigationController ?? self)?.present(alert, animated: true, completion: completion)
    }
    
    /// タイトルとメッセージ（それぞれ省略可能）を表示して了承を求めるシンプルなアラートを表示する
    func showActionAlert(title: String?, message: String?, okAction: UIAlertAction, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        (navigationController ?? self)?.present(alert, animated: true, completion: completion)
    }

}
