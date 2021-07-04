//
//  SideMenuViewController.swift
//  MascoBazariOS
//
//  Created by masco bazar on 3/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {
    
//    var mBSideMenuHeader : MBSideMenuHeader?

    @IBOutlet weak var mBSideMenuHeader: MBMenuHeader!
    @IBOutlet weak var LogoutBtnView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuHeaderTop()
        // Do any additional setup after loading the view.
    }

    func sideMenuHeaderTop(){
        mBSideMenuHeader!.sideMEnuTopHeaderHover.clipsToBounds = true
        mBSideMenuHeader!.sideMEnuTopHeaderHover.layer.cornerRadius = 45
        mBSideMenuHeader!.sideMEnuTopHeaderHover.layer.maskedCorners = [.layerMinXMaxYCorner]
        
        mBSideMenuHeader!.bagPriceView.clipsToBounds = true
        mBSideMenuHeader!.bagPriceView.layer.cornerRadius = 20
        mBSideMenuHeader!.bagPriceView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        mBSideMenuHeader!.languageBtnView.clipsToBounds = true
        mBSideMenuHeader!.languageBtnView.layer.cornerRadius = 5
        mBSideMenuHeader!.languageBtnView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        LogoutBtnView.clipsToBounds = true
        LogoutBtnView.layer.cornerRadius = 5
        LogoutBtnView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }

}
