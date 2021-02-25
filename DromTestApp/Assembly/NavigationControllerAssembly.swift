//
//  NavigationControllerAssembly.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import UIKit

enum NavigationControllerAssembly {
    static func createNavigationController(rootViewController viewController: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
}
