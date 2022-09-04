//
//  ViewController.swift
//  CocoapodsView
//
//  Created by Даша Волошина on 4.09.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var stackTop:TopView = TopView()
    var notes = UITextView()
    var stackViewBottom:Button = Button()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(stackTop)
        view.addSubview(stackViewBottom)
        view.addSubview(notes)
     
        notes.makeNote()
        stackTop.makeStackTop()
        stackViewBottom.makeStackBottom()
        
        stackTop.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(40)
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
     


}

