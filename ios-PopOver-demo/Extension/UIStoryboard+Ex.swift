//
//  UIStoryboard+Ex.swift
//  ios-PopOver-demo
//
//  Created by eiji kushida on 2020/02/26.
//  Copyright © 2020 eiji kushida. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    
    class func viewController<T: UIViewController>(storyboardName: String,
                                                   identifier: String) -> T? {
        
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(
            withIdentifier: identifier) as? T
    }
}
