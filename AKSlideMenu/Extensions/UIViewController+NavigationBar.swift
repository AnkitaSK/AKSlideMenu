//
//  UIViewController+NavigationBar.swift
//  AKSlideMenu
//
//  Created by ankita on 28/11/16.
//  Copyright © 2016 photonphoton. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addLeftBarButtonWithImage(buttonImage:UIImage) {
        let leftButton:UIBarButtonItem = UIBarButtonItem(image: buttonImage, style: .Plain,target: self,action: #selector(self.toggleLeft))
        navigationItem.leftBarButtonItem = leftButton
    }
    
    func toggleLeft() {
        
    }
   
    func setNavigationBarItem() {
        addLeftBarButtonWithImage((UIImage(named: "HamburgerMenu")?.imageWithRenderingMode(.AlwaysOriginal))!)
    }
}
