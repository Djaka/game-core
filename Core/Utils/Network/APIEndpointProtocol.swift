//
//  APIEndpointProtocol.swift
//  Core
//
//  Created by Djaka Permana on 29/07/23.
//

import Foundation
import Alamofire

protocol APIEndpointProtocol {
    var baseURL: URL { get }
    var path: String { get }
    var parameters: Parameters? { get }
    var httpMethod: HTTPMethod { get }
    var parameterEncoding: ParameterEncoding { get }
}
