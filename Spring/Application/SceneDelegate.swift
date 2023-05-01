//
//  SceneDelegate.swift
//  Spring
//
//  Created by M I C H A E L on 01.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        window?.overrideUserInterfaceStyle = .light
    }
}
