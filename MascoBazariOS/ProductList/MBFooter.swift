//
//  MBFooter.swift
//  MascoBazariOS
//
//  Created by masco bazar on 6/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

class MBFooter: MBXibView {

    @IBOutlet weak var bagCircleView: UIView!
    @IBOutlet weak var footerView: UIView!
    var homeBtnHandler : ((Bool?) -> Void)?
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBAction func homeBtn(_ sender: UIButton) {
        self.homeBtnHandler?(true)
    }
    
    @IBAction func myOrderBtn(_ sender: UIButton) {
        
        print("----sumon-----")
    }
}
