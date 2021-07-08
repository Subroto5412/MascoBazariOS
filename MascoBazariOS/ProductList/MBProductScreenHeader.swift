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
    
    var sideMenuBtnHandler : ((Bool?) -> Void)?
    
    
    @IBAction func searchClickableBtn(_ sender: UIButton) {
        seachingView.isHidden = true
        searchingFullView.isHidden = false
    }
    @IBAction func textClearBtn(_ sender: Any) {
    }
    
    @IBAction func sideMenuBtn(_ sender: UIButton) {
        self.sideMenuBtnHandler?(true)
        
//        UIView.animate(withDuration: 0.1) {
//            self.productViewController?.productMenuLeadingConstraint.constant = 10
//            self.productViewController!.view.layoutIfNeeded()
//        } completion: { (status) in
//            self.productViewController!.productSideMenuBackgroundView.alpha = 0.75
//            self.productViewController!.productSideMenuBackgroundView.isHidden = false
//            UIView.animate(withDuration: 0.1) {
//                self.productViewController!.productMenuLeadingConstraint.constant = 0
//                self.productViewController!.view.layoutIfNeeded()
//            } completion: { (status) in
//                self.productViewController?.isMenuShown = true
//            }
//
//        }
//
//        self.productViewController!.productSideMenuBackgroundView.isHidden = false
    }
    
    @IBAction func searchBackBtn(_ sender: Any) {
        seachingView.isHidden = false
        searchingFullView.isHidden = true
    }
}
