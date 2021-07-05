//
//  MBProductScreenHeader.swift
//  MascoBazariOS
//
//  Created by masco bazar on 5/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

class MBProductScreenHeader: MBXibView {
    @IBOutlet weak var searchingViewClicking: UIView!
    @IBOutlet weak var searchingViewSearchable: UIView!
    @IBOutlet weak var seachingView: UIView!
    @IBOutlet weak var searchingFullView: UIView!
    
    @IBAction func searchClickableBtn(_ sender: UIButton) {
        seachingView.isHidden = true
        searchingFullView.isHidden = false
    }
    @IBAction func textClearBtn(_ sender: Any) {
    }
    
    @IBAction func searchBackBtn(_ sender: Any) {
        seachingView.isHidden = false
        searchingFullView.isHidden = true
    }
}
