//
//  Request.swift
//  FastFeet
//
//  Created by Frederico Bechara de Paola on 06/04/21.
//

import Foundation

protocol GetDelegate {
    func didReceiveResponse(student: Student)
}

class Request {
    
    var delegate: GetDelegate?
    
//    func get(urlString: String, completion: @escaping ((String) -> Void)) {
//        let url = URL(string: "http://localhost:3000/get")!
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.httpBody = JSONEncoder().encode(Student(name: "a", xpto: Student.Pato(mae: "l", idade: 1, relacao: .pai)))
//        let session = URLSession(configuration: .default)
//        let dataTask = session.dataTask(with: request, completionHandler: { (data, response, error) in
//            do {
//                let student = try JSONDecoder().decode(Student.self, from: data!)
//                completion(student)
//            } catch (let xpto) {
//                print(xpto)
//            }
//        })
//        
//        dataTask.resume()
//    }
    
    func post(urlString: String, completion: @escaping ((String) -> Void)) {
        let url = URL(string: urlString)!
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        do {
            request.httpBody = try JSONEncoder().encode(["ClientId": 13])
            
            let session = URLSession(configuration: .default)
            let dataTask = session.dataTask(with: request, completionHandler: { (data, response, error) in
                do {
                    let responseText = try JSONDecoder().decode(String.self, from: data!)
                    completion(responseText)
                } catch (let xpto) {
                    print(xpto)
                    completion("Falso")
                }
            })
            
            dataTask.resume()
        } catch {
            return
        }
    }
}


