//
//  MBCardViewRadius.swift
//  MascoBazariOS
//
//  Created by masco bazar on 6/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

@IBDesignable class MBCardViewRadius: UIView {

    var cornnerRadius : CGFloat = 5
       var shadowOfSetWidth : CGFloat = 0
       var shadowOfSetHeight : CGFloat = 5
       
      // var shadowColour : UIColor = MyColor.shadow_color
    var shadowColor: UIColor? = UIColor.black
       var shadowOpacity : CGFloat = 0.2
       
       override func layoutSubviews() {
           layer.cornerRadius = cornnerRadius
           layer.shadowColor = shadowColor?.cgColor
           layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
           
           let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornnerRadius)
           
           layer.shadowPath = shadowPath.cgPath
           
           layer.shadowOpacity = Float(shadowOpacity)
           
       }

}
