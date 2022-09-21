//
//  NavigationViewController.swift
//  CocoapodsView
//
//  Created by Даша Волошина on 20.09.22.
//

import UIKit


class NavigationViewController: UIViewController, ViewControllerDelegate, UINavigationControllerDelegate {

    var viewControllerMenu = MenuViewController()
    var viewControllerMain = ViewController()
    
//    var blurEffect = UIBlurEffect(style:.light)
//    var blurView = UIVisualEffectView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        blurView.effect = blurEffect
//        blurView.translatesAutoresizingMaskIntoConstraints = false
//        blurView.rightAnchor.constraint(equalTo: viewControllerMain.view.rightAnchor).isActive = true
//        blurView.leftAnchor.constraint(equalTo: viewControllerMain.view.leftAnchor).isActive = true
//        blurView.topAnchor.constraint(equalTo:viewControllerMain.view.topAnchor).isActive = true
//        blurView.bottomAnchor.constraint(equalTo: viewControllerMain.view.bottomAnchor).isActive = true
        
      createViewController ()

    }
    
    func createViewController () {
        
        addChild(viewControllerMenu)
        view.addSubview(viewControllerMenu.view)
        viewControllerMenu.didMove(toParent: self)
        
      addChild(viewControllerMain)
        view.addSubview(viewControllerMain.view)
        viewControllerMain.didMove(toParent: self)
        viewControllerMain.delegate = self
        
  
        
    }
        
    func addViewController() {
//        viewControllerMain.view.addSubview(blurView)
        UIView.animate(withDuration: 2, delay: 0, options: .curveLinear) {
            self.viewControllerMain.view.frame.origin.x = self.viewControllerMain.view.frame.size.width - 200
        }

    
}
}
