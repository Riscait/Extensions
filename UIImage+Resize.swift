import UIKit

extension UIImage {
    /// サイズを指定してリサイズ
    func resize(to size: CGSize) -> UIImage? {
        let wRatio = size.width / self.size.width
        let hRatio = size.height / self.size.height
        let ratio = wRatio < hRatio ? wRatio : hRatio
        
        let newSize = CGSize(width: self.size.width * ratio, height: self.size.height * ratio)
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        draw(in: CGRect(origin: .zero, size: newSize))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return resizedImage
    }
    
    /// 倍率を指定してリサイズ
    func resize(scale: CGFloat) -> UIImage? {
        let newSize = CGSize(width: size.width * scale, height: size.height * scale)
        
        return resize(to: newSize)
    }
    
    /// Widthを指定して、アスペクト比を維持したままリサイズ
    func resize(width: CGFloat) -> UIImage? {
        // オリジナル画像のサイズからアスペクト比を計算
        let aspectScale = size.height / size.width
        // widthからアスペクト比を元にリサイズ後のサイズを取得
        let resizedSize = CGSize(width: width, height: width * aspectScale)
        
        return resize(to: resizedSize)
    }
    
    /// Heightを指定して、アスペクト比を維持したままリサイズ
    func resize(height: CGFloat) -> UIImage? {
        // オリジナル画像のサイズからアスペクト比を計算
        let aspectScale = size.height / size.width
        // widthからアスペクト比を元にリサイズ後のサイズを取得
        let resizedSize = CGSize(width: height * aspectScale, height: height)
        
        return resize(to: resizedSize)
    }
}
