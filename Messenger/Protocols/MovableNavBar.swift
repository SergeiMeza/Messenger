//
//  MovableNavBar+Extension.swift
//  Messenger
//
//  Created by Sergei Meza on 2018/06/03.
//  Copyright © 2018 Sergei Meza. All rights reserved.
//

import UIKit

protocol MovableNavBar: class {
    var isBarHidden: Bool { get set }
    
    func appearNavBar(animated: Bool)
    func hideNavBar(animated: Bool)
}

extension MovableNavBar where Self: UIViewController {
    var menuBarHeight: CGFloat { return 33.0 }
    
    var statusBarHeight: CGFloat { return UIApplication.shared.statusBarFrame.size.height }
    
    var navigationBarHeight: CGFloat { return navigationController?.navigationBar.frame.size.height ?? 0 }
    
    func appearNavBar(animated: Bool) {
        if isBarHidden,
           let nc = navigationController {
            isBarHidden = false
            nc.setNavigationBarHidden(false, animated: animated)
            
//            let screenSize = UIScreen.main.bounds.size
//            if DeviceConst.is_iPhoneX {
//                UIView.animate(withDuration: 0.1) { () -> Void in
//                    self.view.frame = CGRect(x: 0, y: self.statusBarHeight + self.navigationBarHeight, width: screenSize.width, height: screenSize.height)
//                    nc.navigationBar.frame.origin.y = self.statusBarHeight
//                }
//            } else {
//                nc.setNavigationBarHidden(false, animated: animated)
//            }
        }
    }
    
    func hideNavBar(animated: Bool) {
        if !isBarHidden,
           let nc = navigationController {
            isBarHidden = true
            nc.setNavigationBarHidden(true, animated: animated)
            
//            let screenSize = UIScreen.main.bounds.size
//            if DeviceConst.is_iPhoneX {
//                UIView.animate(withDuration: 0.1) { () -> Void in
//                    self.view.frame = CGRect(x: 0, y: self.statusBarHeight, width: screenSize.width, height: screenSize.height)
//                    nc.navigationBar.frame.origin.y = -self.navigationBarHeight
//                }
//            } else {
//                nc.setNavigationBarHidden(true, animated: animated)
//            }
        }
    }
}
