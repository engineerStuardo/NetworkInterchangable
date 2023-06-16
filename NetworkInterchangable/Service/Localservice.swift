//
//  Localservice.swift
//  NetworkInterchangable
//
//  Created by Italo Stuardo on 16/6/23.
//

import Foundation

class Localservice: NetworkService {
    var type: String = "Localservice"
    
    func download(_ resource: String) async throws -> [User] {
        guard let path = Bundle.main.path(forResource: resource, ofType: "json") else {
            fatalError("Resource not found")
        }
        
        let data = try Data(contentsOf: URL(filePath: path))
        
        return try JSONDecoder().decode([User].self, from: data)
    }
}
