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
    
    
    func inicializadorDeComponentes(image: String,placeholderText: String){
        
        placeholder = placeholderText
       
        let iconView = UIButton(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.setImage(UIImage(named: image), for: .normal)
        
        let iconContainerView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        
        iconView.addTarget(self, action: "ShoudlBeSecureEntry", for: .touchUpInside)
        
        leftView = iconContainerView
        leftViewMode = .always
        
    }
    
    @objc
    func ShoudlBeSecureEntry(){
        isSecureTextEntry = !isSecureTextEntry
    }
    
    
}
