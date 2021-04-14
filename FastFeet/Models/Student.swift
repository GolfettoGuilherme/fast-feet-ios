//
//  Student.swift
//  FastFeet
//
//  Created by Frederico Bechara de Paola on 06/04/21.
//

import Foundation

struct Student: Codable {
    
    struct Pato: Codable {
        let mae: String
        let idade: Int
        let relacao: Relacao
        
        enum Relacao: String, Codable {
            case pai = "Pai"
            case vo = "Vo"
        }
        
        enum CodingKeys: String, CodingKey {
            case mae = "Mae"
            case idade = "Idade"
            case relacao = "Relacao"
        }
    }
    
    let name: String
    let xpto: Pato

}
