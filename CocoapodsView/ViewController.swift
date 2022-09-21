//
//  ViewController.swift
//  CocoapodsView
//
//  Created by Даша Волошина on 4.09.22.
//

import UIKit
import SnapKit

protocol ViewControllerDelegate:AnyObject {
    
    func addViewController ()
}

class ViewController: UIViewController {
    
 

    var stackTop:TopView = TopView()
    var notes = UITextView()
    var stackViewBottom:Button = Button()
    var button = UIButton(frame: CGRect(x: 30, y: 30, width: 30, height: 30))
    var viewControllerMenu = UIViewController()
    
    weak var delegate: ViewControllerDelegate?
   
    var blurEffect = UIBlurEffect(style:.dark)
    var blurView = UIVisualEffectView(frame: CGRect(x: 0, y: 0, width: 400, height: 1000))

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemMint
        
        view.addSubview(stackTop)
        view.addSubview(stackViewBottom)
        view.addSubview(notes)
        view.addSubview(button)
       
        blurView.effect = blurEffect
//        blurView.translatesAutoresizingMaskIntoConstraints = false
//        blurView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        blurView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        blurView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        blurView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        button.setImage(UIImage(named: "burgerMenu"), for: .normal)
        button.addTarget(self, action: #selector (buttonTap), for: .touchUpInside)
        
        notes.makeNote()
        stackTop.makeStackTop()
        stackViewBottom.makeStackBottom()
        
        stackTop.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(80)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.15)
        }
    
        notes.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(20)
            make.top.equalTo(stackTop.snp.bottom).inset(-20)
            make.bottom.equalTo(stackViewBottom.snp.top).inset(-20)
    
            
        }
        stackViewBottom.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.1)
        }
        
    }
 
    
    @objc func buttonTap (_ sender:UIButton){
        view.addSubview(blurView)
//        blurView.contentView.addSubview()
//        blurView.contentView.addSubview(stackTop)
//        blurView.contentView.addSubview(stackViewBottom)
        delegate?.addViewController()
        
    }

}

