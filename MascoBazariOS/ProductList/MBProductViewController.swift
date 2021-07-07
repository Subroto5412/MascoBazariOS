//
//  MBProductViewController.swift
//  MascoBazariOS
//
//  Created by masco bazar on 5/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

class MBProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mbProductScreenHeader: MBProductScreenHeader!
    @IBOutlet weak var tableView: UITableView!
    var array = ["Masco Bazar Honey (Mustard Flower (Gold) (Mustard Flower (Gold)","Masco Bazar Honey (Mustard Flower (Gold) (Mustard Flower (Gold)","Masco Bazar Honey (Mustard Flower (Gold) (Mustard Flower (Gold)","Masco Bazar Honey (Mustard Flower (Gold) (Mustard Flower (Gold)","Masco Bazar Honey (Mustard Flower (Gold) (Mustard Flower (Gold)","Masco Bazar Honey (Mustard Flower (Gold) (Mustard Flower (Gold)","Masco Bazar Honey (Mustard Flower (Gold) (Mustard Flower (Gold)","Masco Bazar Honey (Mustard Flower (Gold) (Mustard Flower (Gold)"]
    
    @IBOutlet weak var footerView: MBFooter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundCorner()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MBProductsViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MBProductsViewCell
        cell.productNameLbl.text = array[indexPath.row]
       // cell.lbl2.text = array[indexPath.row]
       //cell.img.image = arrimg[indexPath.row]
        return cell
      //  UITableViewStyle *cell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        cell?.textLabel?.text = array1[indexPath.row]
//        cell?.detailTextLabel?.text = array2[indexPath.row]
//        return cell!
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//       // self.view.backgroundColor = UIColor.blue
//        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
//       detail.strlbl1 = array1[indexPath.row]
//       detail.strlbl2 = array2[indexPath.row]
//        detail.strimg = arrimg[indexPath.row]
//        self.navigationController?.pushViewController(detail, animated: true)
//
//
//
//    }
    func roundCorner(){
        mbProductScreenHeader.searchingViewClicking.clipsToBounds = true
        mbProductScreenHeader.searchingViewClicking.layer.cornerRadius = 23
        mbProductScreenHeader.searchingViewClicking.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        mbProductScreenHeader.searchingViewSearchable.clipsToBounds = true
        mbProductScreenHeader.searchingViewSearchable.layer.cornerRadius = 23
        mbProductScreenHeader.searchingViewSearchable.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        footerView.footerView.clipsToBounds = true
        footerView.footerView.layer.cornerRadius = 30
        footerView.footerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

}
