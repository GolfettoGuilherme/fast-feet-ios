//
//  ForgotPasswordViewModel.swift
//  FastFeet
//
//  Created by Frederico Bechara de Paola on 14/04/21.
//

import Foundation

class ForgotPasswordViewModel {
    
    let requester = Request()
    
    func resetPassword(completion: @escaping (Bool) -> Void) {
        let urlString = "http://localhost:3000/post"
        requester.post(urlString: urlString) { successString in
            
            switch successString {
            case "Sucesso":
                completion(true)
            default:
                completion(false)
            }
        }
    }
    
}
