//
//  DataSource.swift
//  Core
//
//  Created by Djaka Permana on 29/07/23.
//

import Foundation
import RxSwift

public protocol RemoteDataSource {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> Observable<Response>
}
