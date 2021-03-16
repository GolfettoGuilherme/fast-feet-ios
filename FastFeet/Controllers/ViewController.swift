//
//  ViewController.swift
//  FastFeet
//
//  Created by Guilherme Golfetto on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCpf: TextField!
    
    @IBOutlet weak var txtSenha: TextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtCpf.inicializadorDeComponentes(image: "Man", placeholderText: "CPF")
        txtSenha.inicializadorDeComponentes(image: "Man", placeholderText: "Senha")
    }
    
    @IBAction func btnLogarClick(_ sender: UIButton) {
    }
    
    
}

