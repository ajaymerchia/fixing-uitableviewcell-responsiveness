//
//  UISuite.swift
//  ARMDevSuite
//
//  Created by Ajay Merchia on 2/7/19.
//

import Foundation
import UIKit


public class UISuite {
    public static func getImageFrom(url: String, defaultImg: UIImage, callback: @escaping ((UIImage) -> ())) {
        
        if let imageUrl:URL = URL(string: url) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageUrl)
                DispatchQueue.main.async {
                    if let retrievedImage = data {
                        callback(UIImage(data: retrievedImage)!)
                    }
                    else {
                        callback(defaultImg)
                    }
                }
                
            }
        } else {
            callback(defaultImg)
        }
    }
    
    public enum Side {
        case Top
        case Right
        case Bottom
        case Left
    }
    
    public static func getBorder(forView: UIView, thickness: CGFloat, color: UIColor, side: Side) -> UIView {
        
        let ret = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        ret.backgroundColor = color
        
        switch side {
        case .Top:
            ret.frame = LayoutManager.aboveCentered(elementBelow: forView, padding: thickness, width: forView.frame.width, height: thickness)
            return ret
        case .Right:
            ret.frame = CGRect(x: forView.frame.maxX, y: forView.frame.minY, width: thickness, height: forView.frame.height)
            return ret
        case .Bottom:
            ret.frame = LayoutManager.belowCentered(elementAbove: forView, padding: 0, width: forView.frame.width, height: thickness)
            return ret
        case .Left:
            ret.frame = CGRect(x: forView.frame.minX - thickness, y: forView.frame.minY, width: thickness, height: forView.frame.height)
            return ret
        }
        
    }
    
    /// Adds the question mark based background image to the given view
    ///
    /// - Parameter given_view: View to which a background image should be added
    public static func addBackgroundImage(givenView: UIView, imgName: String, opacity: CGFloat = 1) {
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: givenView.frame.width, height: givenView.frame.height))
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.clipsToBounds = true
        backgroundImage.image = UIImage(named: imgName)
        backgroundImage.alpha = opacity
        givenView.insertSubview(backgroundImage, at: 0)
    }
    
    public static func hexStringToRGBValues(hex: String) -> [Int] {
        var values = [0,0,0]
        
        guard var hexValue = Int(hex.suffix(6), radix: 16) else {
            return values
        }
        
        for i in 0...2 {
            values[2-i] = hexValue % 256
            hexValue = Int(floor(Double(hexValue) / 256.0))
        }
        
        return values
    }
    
    
}



