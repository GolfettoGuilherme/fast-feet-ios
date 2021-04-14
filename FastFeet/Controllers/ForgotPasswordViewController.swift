//
//  ForgotPasswordViewController.swift
//  FastFeet
//
//  Created by Frederico Bechara de Paola on 24/03/21.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    
    let viewModel: ForgotPasswordViewModel = ForgotPasswordViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backTap(_ sender: Any) {
//        navigationController?.popViewController(animated: true)
        
        viewModel.resetPassword { success in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                success ? self.dismiss(animated: true, completion: nil) : self.presentError()
            }
        }
    }
    
    func presentError() {
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        let retryAction = UIAlertAction(title: "Tentar novamente", style: .default) { _ in
            self.viewModel.resetPassword { success in
                success ? self.dismiss(animated: true, completion: nil) : self.presentError()
            }
        }
        let failAlert = UIAlertController(title: "Falha no engano", message: "Tente de novo mais tarde", preferredStyle: .alert)
        failAlert.addAction(retryAction)
        failAlert.addAction(cancelAction)
        
        self.present(failAlert, animated: true, completion: nil)
    }
}

extension ForgotPasswordViewController: GetDelegate {
    
    func didReceiveResponse(student: Student) {
        print(student)
    }
}
