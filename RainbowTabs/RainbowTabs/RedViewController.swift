//
//  RedViewController.swift
//  RainbowTabs
//
//  Created by 이주원 on 2021/01/10.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "1"
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tabBarItem.badgeValue = nil
    }


}

