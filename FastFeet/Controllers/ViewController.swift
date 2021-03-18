//
//  ViewController.swift
//  FastFeet
//
//  Created by Guilherme Golfetto on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var txtCpf: TextField!
    
    @IBOutlet weak var btnLogar: UIButton!
    
    @IBOutlet weak var txtSenha: TextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogar.layer.cornerRadius = 8
        btnLogar.clipsToBounds = true
        
        txtCpf.inicializadorDeComponentes(image: "Man", placeholderText: "CPF", type: .text)
        txtSenha.inicializadorDeComponentes(image: "Lock", placeholderText: "Senha", type: .password)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)

    }
    
    @IBAction func btnLogarClick(_ sender: UIButton) {
        txtSenha.endEditing(true)
    }
    
    @objc func keyboardWillShow(notification:NSNotification) {
        
        guard let userInfo = notification.userInfo,
              let keyboardFrameCGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue
        else { return }
        
        var keyboardFrame: CGRect = keyboardFrameCGRect
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)

        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height + 20
        scrollView.contentInset = contentInset
    }

    @objc func keyboardWillHide(notification:NSNotification) {

        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
    }
    
}

