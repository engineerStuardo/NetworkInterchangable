//
//  NetworkService.swift
//  NetworkInterchangable
//
//  Created by Italo Stuardo on 16/6/23.
//

import Foundation

protocol NetworkService {
    func download(_ resource: String) async throws -> [User]
    var type: String { get }
}
