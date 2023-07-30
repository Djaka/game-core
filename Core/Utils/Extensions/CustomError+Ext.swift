//
//  CustomError+Ext.swift
//  Core
//
//  Created by Djaka Permana on 29/07/23.
//

import Foundation

enum APIError: Error {
    case decode
    case unAuthorize
    case forbidden
    case invalidUrl
    case internalServerError
    case unknown
    
    var message: String {
        switch self {
        case .decode:
            return "Error parsing data"
        case .forbidden:
            return "Access forbidden"
        case .unAuthorize:
            return "Unauthorize access"
        case .invalidUrl:
            return "Invalid URL"
        case .internalServerError:
            return "Internal server error"
        default:
            return "Something went wrong"
        }
    }
}

enum DatabaseError: Error {
    case invalidInstance
    case errorRequest
    case unknown
    
    var message: String {
        switch self {
        case .invalidInstance:
            return "Database can't instance."
        case .errorRequest:
            return "Your request failed."
        case .unknown:
            return "Database error."
        }
    }
}
