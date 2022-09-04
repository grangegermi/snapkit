//
//  exstension.swift
//  CocoapodsView
//
//  Created by Даша Волошина on 4.09.22.
//

import UIKit

extension  UIStackView{

    func makeStackLabel () {
     
        axis = .vertical
//        alignment = .fill
        distribution = .fillEqually
        spacing =  5
    }
    
    func makeStackTextField () {
        
        axis = .vertical
        distribution = .fillEqually
        spacing =  5
//        alignment = .fill
        
    }
    
    func makeStackTop () {
        
        axis = .horizontal
//        distribution = .fillEqually
        spacing =  10
//        alignment = .fill
    
    }
}
//
extension Button {

    func makeStackBottom () {

        axis = .horizontal
        distribution = .fillEqually
        alignment = .fill
        spacing = 10

    }
    
}

extension UILabel {
    
    func makelabel (){
        
        textAlignment = .left
        textColor = .black

    }
    
}
extension UITextField {
    func  makeTextField () {
        
        borderStyle = .roundedRect
        textColor = .black
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 2
 
    }
    
}
extension UITextView {
    
    func makeNote () {
        
        text  = " Notes "
        backgroundColor = .gray
        contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 0)
        font = UIFont.systemFont(ofSize: 18)
        translatesAutoresizingMaskIntoConstraints = false
        isScrollEnabled = false
    }
}
