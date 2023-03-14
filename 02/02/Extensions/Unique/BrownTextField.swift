//
//  BrownTextField.swift
//  02
//
//  Created by Марина on 06.03.2023.
//

import UIKit

class BrownTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .specialBrown
        borderStyle = .none
        layer.cornerRadius = 10
        textColor = .specialGray
        font = .robotoBold20()
        leftView = UIView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: 15,
                                                  height: 0))
        leftViewMode = .always
        clearButtonMode = .always
        returnKeyType = .done
        translatesAutoresizingMaskIntoConstraints = false
    }
}

//MARK: - UITextFieldDelegate

extension BrownTextField: UITextFieldDelegate {

    //function textFieldShouldReturn
    //runs when the return key in the keyboard is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        // resignFirstResponder tells the text field that it will stop being the first responder of the window, and also hides the keyboard for the text field
        return true
    }
}
