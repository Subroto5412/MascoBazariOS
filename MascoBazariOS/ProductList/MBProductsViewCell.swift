//
//  MBProductsViewCell.swift
//  MascoBazariOS
//
//  Created by masco bazar on 6/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

class MBProductsViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var productSKULbl: UILabel!
    @IBOutlet weak var mrpPriceLbl: UILabel!
    @IBOutlet weak var discountPriceLbl: UILabel!
    @IBOutlet weak var orderQtyLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
