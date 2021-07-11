//
//  MBPopupMenu.swift
//  MascoBazariOS
//
//  Created by masco bazar on 11/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

class MBPopupMenu: MBXibView {
    
    var accountInformationBtnHandler : ((Bool?) -> Void)?
    var addressBtnHandler : ((Bool?) -> Void)?
    var myOrderBtnHandler : ((Bool?) -> Void)?
    var myWalletBtnHandler : ((Bool?) -> Void)?
    var myGiftVoucherBtnHandler : ((Bool?) -> Void)?
    var monthlyBazarListBtnHandler : ((Bool?) -> Void)?
    var productSubscriptionBtnHandler : ((Bool?) -> Void)?
    var changePasswordBtnHandler : ((Bool?) -> Void)?
    
    @IBOutlet weak var popupMenuView: UIView!
    
    @IBAction func accountInformationBtn(_ sender: Any) {
        self.accountInformationBtnHandler?(true)
    }
    
    @IBAction func addressBtn(_ sender: UIButton) {
    }
    
    
    @IBAction func myOrderBtn(_ sender: UIButton) {
    }
    
    @IBAction func myWalletBtn(_ sender: Any) {
    }
    
    @IBAction func myGiftVoucherBtn(_ sender: Any) {
    }
    
    
    @IBAction func monthlyBazarListBtn(_ sender: Any) {
    }
    
    @IBAction func productSubscriptionBtn(_ sender: Any) {
    }
    
    
    @IBAction func changePasswordBtn(_ sender: UIButton) {
    }
}
