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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuHeaderTop()
        // Do any additional setup after loading the view.
    }

    func sideMenuHeaderTop(){
        mBSideMenuHeader!.sideMEnuTopHeaderHover.clipsToBounds = true
        mBSideMenuHeader!.sideMEnuTopHeaderHover.layer.cornerRadius = 45
        mBSideMenuHeader!.sideMEnuTopHeaderHover.layer.maskedCorners = [.layerMinXMaxYCorner]
    }

}
