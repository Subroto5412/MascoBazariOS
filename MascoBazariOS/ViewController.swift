//
//  ViewController.swift
//  MascoBazariOS
//
//  Created by masco bazar on 25/6/21.
//

//.layerMinXMinYCorner = Top left corner
//.layerMaxXMinYCorner = Top right corner
//.layerMinXMaxYCorner = Bottom left corner
//.layerMaxXMaxYCorder = Bottom right corner

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchingView: UIView!
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var searchingInnerView: UIView!
    @IBOutlet weak var searchingFullView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cornerRoundView()
    }
    
    

    @IBAction func forwordToSearchingBtn(_ sender: UIButton) {
        
        searchingView.isHidden = true
        searchingFullView.isHidden = false
    }
    
    @IBAction func searchingBackBtn(_ sender: UIButton) {
        searchingView.isHidden = false
        searchingFullView.isHidden = true
    }
    

    @IBAction func searchingAllClearBtn(_ sender: UIButton) {
    }
    
    
    func cornerRoundView(){
        searchingView.clipsToBounds = true
        searchingView.layer.cornerRadius = 23
        searchingView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        searchingInnerView.clipsToBounds = true
        searchingInnerView.layer.cornerRadius = 23
        searchingInnerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        footerView.clipsToBounds = true
        footerView.layer.cornerRadius = 30
        footerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}

