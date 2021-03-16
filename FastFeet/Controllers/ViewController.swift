//
//  ViewController.swift
//  FastFeet
//
//  Created by Guilherme Golfetto on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCpf: TextField!
    
    @IBOutlet weak var btnLogar: UIButton!
    
    @IBOutlet weak var txtSenha: TextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogar.layer.cornerRadius = 8
        btnLogar.clipsToBounds = true
        
        txtCpf.inicializadorDeComponentes(image: "Man", placeholderText: "CPF", type: .text)
        txtSenha.inicializadorDeComponentes(image: "Lock", placeholderText: "Senha", type: .password)
    }
    
    @IBAction func btnLogarClick(_ sender: UIButton) {
    }
    
    
}

