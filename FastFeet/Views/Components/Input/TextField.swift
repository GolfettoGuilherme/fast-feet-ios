//
//  TextField.swift
//  FastFeet
//
//  Created by Guilherme Golfetto on 15/03/21.
//

import UIKit

class TextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    func inicializadorDeComponentes(image: String,placeholderText: String, type: TextFieldType){
        placeholder = placeholderText
            
        let iconView = UIButton(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        iconView.setImage(UIImage(named: image), for: .normal)
        
        let iconContainerView = UIView(frame: CGRect(x: 20, y: 0, width: 50, height: 50))
        iconContainerView.addSubview(iconView)
        
        if type == .password {
            
            let iconShowPasswordView = UIButton(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
            iconShowPasswordView.setImage(UIImage(named: "Eye Open"), for: .normal)
            
            iconShowPasswordView.addTarget(self, action: #selector(self.ShoudlBeSecureEntry(sender:)), for: .touchUpInside)
            
            let containerShowPassword = UIView(frame: CGRect(x: 20, y: 0, width: 50, height: 50))
            containerShowPassword.addSubview(iconShowPasswordView)
            
            rightView = containerShowPassword
            rightViewMode = .always
            
        }
        
        leftView = iconContainerView
        leftViewMode = .always
        
    }
    
    @objc
    func ShoudlBeSecureEntry(sender: UIButton){
        isSecureTextEntry = !isSecureTextEntry

        sender.setImage(UIImage(named:isSecureTextEntry ? "Eye Open" : "Eye Closed" ), for: .normal)
    }
    
    
}
