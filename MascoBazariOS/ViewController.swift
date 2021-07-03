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
    
    @IBOutlet weak var leadingConstantForMenuView: NSLayoutConstraint!
    @IBOutlet weak var menuView: UIView!
    
    @IBOutlet weak var menuBackgroundView: UIView!
    
    private var isMenuShown:Bool = false
    private var beginPoint:CGFloat = 0.0
    private var difference:CGFloat = 0.0
    
    var sideMenuViewController : SideMenuViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cornerRoundView()
        self.menuBackgroundView.isHidden = true
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
    
    @IBAction func menuBtn(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.1) {
            self.leadingConstantForMenuView.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.menuBackgroundView.alpha = 0.75
            self.menuBackgroundView.isHidden = false
            UIView.animate(withDuration: 0.1) {
                self.leadingConstantForMenuView.constant = 0
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.isMenuShown = true
            }

        }

        self.menuBackgroundView.isHidden = false
    }
    
    @IBAction func topped(_ sender: Any) {
        self.hideMenuView()
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
        
        
        menuView.clipsToBounds = true
        menuView.layer.cornerRadius = 50
        menuView.layer.maskedCorners = [.layerMaxXMaxYCorner]
    }
    
    
    private func hideMenuView()
    {
        UIView.animate(withDuration: 0.1) {
            self.leadingConstantForMenuView.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.menuBackgroundView.alpha = 0.0
            UIView.animate(withDuration: 0.1) {
                self.leadingConstantForMenuView.constant = -320
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.menuBackgroundView.isHidden = true
                self.isMenuShown = false
            }
        }
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if (isMenuShown)
//        {
//             if let touch = touches.first
//            {
//                let location = touch.location(in: menuBackgroundView)
//                beginPoint = location.x
//            }
//        }
//    }

//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if (isMenuShown)
//        {
//            if let touch = touches.first
//            {
//                let location = touch.location(in: menuBackgroundView)
//
//                let differenceFromBeginPoint = beginPoint - location.x
//
//                if (differenceFromBeginPoint>0 || differenceFromBeginPoint<280)
//                {
//                    difference = differenceFromBeginPoint
//                    self.leadingConstantForMenuView.constant = -differenceFromBeginPoint
//                    self.menuBackgroundView.alpha = 0.75-(0.75*differenceFromBeginPoint/280)
//                }
//            }
//        }
//    }

//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if (isMenuShown)
//        {
//            if (difference>140)
//            {
//                UIView.animate(withDuration: 0.1) {
//                    self.leadingConstantForMenuView.constant = -290
//                } completion: { (status) in
//                    self.menuBackgroundView.alpha = 0.0
//                    self.isMenuShown = false
//                    self.menuBackgroundView.isHidden = true
//                }
//            }
//            else{
//                UIView.animate(withDuration: 0.1) {
//                    self.leadingConstantForMenuView.constant = -10
//                } completion: { (status) in
//                    self.menuBackgroundView.alpha = 0.75
//                    self.isMenuShown = true
//                    self.menuBackgroundView.isHidden = false
//                }
//            }
//        }
//    }
}

