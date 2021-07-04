//
//  NSObject+Extension.swift
//  MascoBazariOS
//
//  Created by masco bazar on 4/7/21.
//  Copyright © 2021 MascoGroup. All rights reserved.
//

import UIKit

extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}

