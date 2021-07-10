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

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var searchingView: UIView!
    @IBOutlet weak var searchingInnerView: UIView!
    @IBOutlet weak var searchingFullView: UIView!
    
    @IBOutlet weak var leadingConstantForMenuView: NSLayoutConstraint!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var footerView: MBFooter!
    @IBOutlet weak var menuBackgroundView: UIView!
    
    private var isMenuShown:Bool = false
    private var beginPoint:CGFloat = 0.0
    private var difference:CGFloat = 0.0
    
    var arrlbl = ["Watch1","Watch2","Watch3","Watch4","Watch5","Watch6","Watch7","Watch8","Watch9","Watch10","Watch11","Watch12","Watch13","Watch14","Watch15","Watch16","Watch17","Watch18","Watch19","Watch20"]
    
    var sideMenuViewController : SideMenuViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cornerRoundView()
        self.menuBackgroundView.isHidden = true
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
          return 1
      }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }
  
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //UIcollectionviewcell * cell = collectionview.de "cell"
        
        let cell:MBHomeCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MBHomeCollectionViewCell
        
        //cell.img.image = arrimg[indexPath.row]
        cell.nameLbl.text = arrlbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let alert = UIAlertController(title: "Hi", message: "\(arrlbl[indexPath.row])", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
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
        
        footerView.footerView.clipsToBounds = true
        footerView.footerView.layer.cornerRadius = 30
        footerView.footerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        
        menuView.clipsToBounds = true
        menuView.layer.cornerRadius = 50
        menuView.layer.maskedCorners = [.layerMaxXMaxYCorner]
        
        footerView!.bagCircleView.clipsToBounds = true
        footerView!.bagCircleView.layer.cornerRadius = 10
        footerView!.bagCircleView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    
    func hideMenuView()
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

