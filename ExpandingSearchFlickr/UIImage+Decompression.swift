//
//  UIImage+Decompression.swift
//  ExpandingSearchFlickr
//
//  Created by Vamshi Krishna on 25/06/17.
//  Copyright © 2017 VamshiKrishna. All rights reserved.
//


import Foundation
import UIKit

extension UIImage{
    
    var decompressedImage:UIImage{
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        draw(at: CGPoint.zero)
        let decompressedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return decompressedImage!
    }
}
