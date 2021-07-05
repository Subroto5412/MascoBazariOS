//
//  MBProductViewController.swift
//  MascoBazariOS
//
//  Created by masco bazar on 5/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

class MBProductViewController: UIViewController {

    @IBOutlet weak var mbProductScreenHeader: MBProductScreenHeader!
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorner()
        // Do any additional setup after loading the view.
    }
    

    func roundCorner(){
        mbProductScreenHeader.searchingViewClicking.clipsToBounds = true
        mbProductScreenHeader.searchingViewClicking.layer.cornerRadius = 23
        mbProductScreenHeader.searchingViewClicking.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        mbProductScreenHeader.searchingViewSearchable.clipsToBounds = true
        mbProductScreenHeader.searchingViewSearchable.layer.cornerRadius = 23
        mbProductScreenHeader.searchingViewSearchable.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }

}
