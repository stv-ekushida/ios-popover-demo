//
//  UserMenuListViewController.swift
//  cap_sales-tool_app
//
//  Created by eiji kushida on 2020/02/07.
//  Copyright © 2020 STV-M025. All rights reserved.
//

import UIKit

enum UserMenuType: Int, CaseIterable {
    case menu1
    case menu2
    
    var title: String {
        switch self {
        case .menu1:
            return "メニュー1"
        case .menu2:
            return "メニュー2"
        }
    }
}

final class UserMenuListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserMenuType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        guard let menuType = UserMenuType(rawValue: indexPath.row) else {
            fatalError("UserMenuType not Found.")
        }
        cell.selectedBackgroundColor = .blue
        cell.textLabel?.highlightedTextColor = .white
        cell.textLabel?.text = menuType.title
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension UserMenuListViewController {
    
    class func instance() -> UserMenuListViewController {
        
        guard let viewController = UIStoryboard.viewController(
            storyboardName: "UserMenuListViewController",
            identifier:  "UserMenuListViewController") as? UserMenuListViewController else {
            fatalError("UserMenuListViewController not Found.")
        }
        return viewController
    }
}
