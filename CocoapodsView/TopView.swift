//
//  TopView.swift
//  CocoapodsView
//
//  Created by Даша Волошина on 4.09.22.
//

import UIKit
import SnapKit
class TopView: UIStackView {
        
        var stackViewForTextField = UIStackView()
        var imageWithView = UIImageView()
        var stackLabel = UIStackView()
        var label1 =  UILabel()
        var label2 = UILabel()
        var label3 = UILabel()
        var textFild1 = UITextField()
        var textFild2 = UITextField()
        var textFild3 = UITextField()
        
        override init(frame:CGRect){
            super.init(frame:frame)
            
            addArrangedSubview(imageWithView)
            addArrangedSubview(stackLabel)
            addArrangedSubview(stackViewForTextField)
            

            imageWithView.image = UIImage(named: "cat")
            imageWithView.contentMode = .scaleAspectFit
            imageWithView.frame = CGRect(x: 0, y: 0, width:100, height: 100)
            imageWithView.backgroundColor = .purple
            makeStackLabel1 ()
            makeStackTextField2 ()
            
        }
        
        func makeStackLabel1 () {
            
            stackLabel.addArrangedSubview(label1)
            stackLabel.addArrangedSubview(label2)
            stackLabel.addArrangedSubview(label3)
            stackLabel.makeStackLabel()
            
            label1.text = "First"
            label2.text = "Middle"
            label3.text = "Last"
            stackLabel.snp.makeConstraints { make in
                make.width.equalToSuperview().multipliedBy(0.2)
            }
            
        }
     
        func makeStackTextField2 () {
            
            stackViewForTextField.addArrangedSubview(textFild1)
            stackViewForTextField.addArrangedSubview(textFild2)
            stackViewForTextField.addArrangedSubview(textFild3)
            stackViewForTextField.makeStackTextField()
            
            stackViewForTextField.snp.makeConstraints { make in
                make.width.equalToSuperview().multipliedBy(0.45)
            }
            
            textFild1.placeholder = "Enter first ame"
            textFild2.placeholder = "Enter middle name"
            textFild3.placeholder = "Enter last name"
//            textFild1.resignFirstResponder()
            
            textFild1.makeTextField()
            textFild2.makeTextField()
            textFild3.makeTextField()
             
    }
        
        required init(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
}
