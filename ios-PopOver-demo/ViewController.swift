//
//  ViewController.swift
//  ios-PopOver-demo
//
//  Created by eiji kushida on 2020/02/26.
//  Copyright © 2020 eiji kushida. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapShoPopover(_ sender: UIButton) {
        
        let vc = UserMenuListViewController.instance()
        vc.modalPresentationStyle = .popover
        vc.preferredContentSize = CGSize(width: 300, height: 88)
        vc.popoverPresentationController?.sourceView = view
        vc.popoverPresentationController?.sourceRect = sender.frame
        vc.popoverPresentationController?.permittedArrowDirections = .up
        vc.popoverPresentationController?.delegate = self
        present(vc, animated: true)
    }
    
}

//MARK: - For iPhone
extension ViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController,
                                   traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}
