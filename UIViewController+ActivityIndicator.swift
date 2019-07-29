//
//  UIViewController+ActivityIndicator.swift
//
//  Created by Muramatsu Ryunosuke on 2018/10/28.
//

import UIKit

extension UIViewController {
    
    /// くるくる回るインジケーター付きアラート
    ///
    /// - Parameters:
    ///   - message: Alertに表示するメッセージ文字列（デフォルトは"Loading"）
    ///   - completion: 表示完了後の動作
    func showAlertWithIndicator(message: String? = "Loading", completion: (() -> Void)? = nil) {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        let indicator = UIActivityIndicatorView(style: .gray)
        indicator.center = CGPoint(x: 25, y: 30)
        alert.view.addSubview(indicator)
        
        indicator.startAnimating()
        present(alert, animated: true, completion: completion)
    }
    
    /// 表示中のインジケーター付きアラートのメッセージを更新する
    ///
    /// - Parameters:
    ///   - message: 更新後のメッセージ文字列
    ///   - completion: 文字列更新完了後の動作
    func updateDisplayedAlert(message: String, completion: (() -> Void)? = nil) {
        
        guard let alert = (presentedViewController as? UIAlertController) else { return }
        
        alert.message = message
        completion?()
    }

    /// 表示中のインジケーター付きアラートを消す
    ///
    /// - Parameters:
    ///   - completion: 消した後の動作
    func dismissAlertWithIndicator(completion: (() -> Void)? = nil) {
        
        guard let alert = (presentedViewController as? UIAlertController) else { return }
        alert.dismiss(animated: true, completion: completion)
    }
}
