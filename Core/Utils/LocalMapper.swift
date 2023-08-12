//
//  LocalMapper.swift
//  Core
//
//  Created by Djaka Permana on 12/08/23.
//

import Foundation

public protocol LocalMapper {
    associatedtype Entity
    associatedtype Domain
    
    func transformEntityToDomain(entity: Entity) -> Domain
    func transformDomainToEntity(domain: Domain) -> Entity
}
