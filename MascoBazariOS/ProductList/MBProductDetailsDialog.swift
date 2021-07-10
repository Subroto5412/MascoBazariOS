//
//  MBProductDetailsDialog.swift
//  MascoBazariOS
//
//  Created by masco bazar on 10/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//
import Foundation
import UIKit

class MBProductDetailsDialog: UIView {
    static let instance = MBProductDetailsDialog()
    
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var imageCountingView: UIView!
    @IBOutlet weak var checkoutView: UIView!
    @IBOutlet weak var givenQtyView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("MBProductDetailsDialog", owner: self, options: nil)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
    
        alertView.layer.cornerRadius = 10
        imageCountingView.layer.cornerRadius = 10
        checkoutView.layer.cornerRadius = 5
        givenQtyView.layer.cornerRadius = 5
        
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        imageCountingView.layer.borderColor = UIColor.orange.cgColor
        imageCountingView.layer.borderWidth = 1
        
    }
    
    
        enum AlertType {
        case success
    }
    
//    func showAlert(title: String, message: String, alertType: AlertType) {
    func showAlert(index:String) {
//        self.titleLbl.text = title
//        self.messageLbl.text = message
//
//        switch alertType {
//        case .success:
//            img.image = UIImage(named: "Success")
//            doneBtn.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
//        case .failure:
//            img.image = UIImage(named: "Failure")
//            doneBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        //}
//        print("-----sss------\(index)")
           UIApplication.shared.keyWindow!.addSubview(parentView)
          //  let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
         //   self.parentView.window
//        self.present(alert, animated: true)
        
//        var keyWindow = UIApplication.shared.connectedScenes
//                .filter({$0.activationState == .foregroundActive})
//                .map({$0 as? UIWindowScene})
//                .compactMap({$0})
//                .first?.windows
//                .filter({$0.isKeyWindow}).first
//
//        keyWindow?.endEditing(true)
      //  self.UIApplication.UIWindow.addSubview(parentView)
       // self.UIApplication.shared.UIWindow?.addSubview(parentView)
        
        
    }
    @IBAction func closeBtn(_ sender: Any) {
        parentView.removeFromSuperview()
    }
    
//    @IBAction func CloseBtn(_ sender: UIButton) {
//        parentView.removeFromSuperview()
//       // parentView.superclass
//    }
    
}
