//
//  RemoteMapper.swift
//  Core
//
//  Created by Djaka Permana on 17/08/23.
//

import Foundation

public protocol RemoteMapper {
    associatedtype Response
    associatedtype Domain
    
    func transformResponseToDomain(response: Response) -> Domain
}
