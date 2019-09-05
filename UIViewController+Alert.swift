import UIKit

extension UIViewController {
    
    /// タイトルとメッセージ（それぞれ省略可能）を表示して了承を求めるシンプルなアラートを表示する
    ///
    /// - Parameters:
    ///   - title: アラートのタイトル文字列
    ///   - message: アラートのメッセージ文字列
    ///   - completion: 表示させた時の処理
    func showAlert(title: String?, message: String?, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .default, handler: nil)
        alert.addAction(ok)
        (navigationController ?? self)?.present(alert, animated: true, completion: completion)
    }
    
    /// タイトルとメッセージ（それぞれ省略可能）を表示して了承を求めるシンプルなアラートを表示する
    ///
    /// - Parameters:
    ///   - title: アラートのタイトル文字列
    ///   - message: アラートのメッセージ文字列
    ///   - canCancel: キャンセルボタンを表示するか
    ///   - okAction: 肯定アクション
    ///   - completion: 表示させた時の処理
    func showActionAlert(title: String?,
                         message: String?,
                         canCancel: Bool,
                         okAction: UIAlertAction,
                         completion: (() -> Void)? = nil) {
    
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(okAction)

        if canCancel {
            alert.addAction(UIAlertAction(
                title: NSLocalizedString("Cancel", comment: ""),
                style: .cancel,
                handler: nil)
            )
        }
        (navigationController ?? self)?.present(alert, animated: true, completion: completion)
    }
    
    /// Error表示用アラート。ローカライズされた説明文と、オリジナルのErrorメッセージを表示する
    ///
    /// - Parameters:
    ///   - error: Error
    ///   - completion: 表示完了時の処理
    func showErrorAlert(_ error: Error, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: error.localizedDescription, message: "\(error)", preferredStyle: .alert)
        let ok = UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .default, handler: nil)
        alert.addAction(ok)
        (navigationController ?? self)?.present(alert, animated: true, completion: completion)
    }
}
