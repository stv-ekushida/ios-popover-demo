//
//  UITableViewCell+Ex.swift
//  ios-PopOver-demo
//
//  Created by eiji kushida on 2020/02/26.
//  Copyright © 2020 eiji kushida. All rights reserved.
//

import UIKit

extension UITableViewCell {

    @IBInspectable
    var selectedBackgroundColor: UIColor? {
        get {
            return selectedBackgroundView?.backgroundColor
        }
        set(color) {
            let background = UIView()
            background.backgroundColor = color
            selectedBackgroundView = background
        }
    }
}
