//
//  ParallaxCell.swift
//  Parallax
//
//  Created by Vivek Rai on 19/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var textCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func configureCell(withImage image: UIImage, descriptionText text: String){
        self.imageCell.image = image
        self.textCell.text = text
    }
    
    func setParallaxEffect(){
        let min = CGFloat(-30)
        let max = CGFloat(+30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectsGroup = UIMotionEffectGroup()
        motionEffectsGroup.motionEffects = [xMotion, yMotion]
        imageCell.addMotionEffect(motionEffectsGroup)
        
    }

}
