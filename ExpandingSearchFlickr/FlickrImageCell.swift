//
//  FlickrImageCell.swift
//  ExpandingSearchFlickr
//
//  Created by Vamshi Krishna on 25/06/17.
//  Copyright © 2017 VamshiKrishna. All rights reserved.
//

import UIKit

class FlickrImageCell: UICollectionViewCell {
    @IBOutlet fileprivate weak var imageView: UIImageView!
    @IBOutlet fileprivate weak var imageCoverView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet weak var photoIdLabel: UILabel!
    
    var searchImage:SearchImage?{
        didSet{
            if let searchImage = searchImage{
                //imageView.sd_setImage(with: searchImage.photoUrl as URL!)
                titleLabel.text = searchImage.title
                photoIdLabel.text = searchImage.photoId
            }
        }
    }
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        
        // 1
        let standardHeight = UltravisualLayoutConstants.Cell.standardHeight
        let featuredHeight = UltravisualLayoutConstants.Cell.featuredHeight
        
        // 2
        let delta = 1 - ((featuredHeight - frame.height) / (featuredHeight - standardHeight))
        
        // 3
        let minAlpha: CGFloat = 0.3
        let maxAlpha: CGFloat = 0.75
        imageCoverView.alpha = maxAlpha - (delta * (maxAlpha - minAlpha))
        photoIdLabel.alpha = delta
    }
}
