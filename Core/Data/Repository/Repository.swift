//
//  Repository.swift
//  Core
//
//  Created by Djaka Permana on 25/07/23.
//

import Foundation
import RxSwift

public protocol Repository {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> Observable<Response>
}
