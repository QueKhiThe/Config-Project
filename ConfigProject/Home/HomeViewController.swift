//
//  HomeViewController.swift
//  ConfigProject
//
//  Created by MBA0023 on 9/22/19.
//  Copyright © 2019 MBA0023. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ID")
        var testID = 9
        print(getFromInfo(key: "Name"))
        print(getFromInfo(key: "Test Config"))
    }
}

extension HomeViewController {

    private func getFromInfo(key: String) -> String {
        guard let info = Bundle.main.infoDictionary?[key] as? String else { return "" }
        return info.replacingOccurrences(of: "\\", with: "")
    }
}
