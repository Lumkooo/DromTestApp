//
//  SceneDelegate.swift
//  DromTestApp
//
//  Created by Андрей Шамин on 2/25/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        let imagesViewContorller = ImagesListVCAssembly.createVC()
        let navigationController = NavigationControllerAssembly.createNavigationController(rootViewController: imagesViewContorller)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
}

