//
//  LocaleDataSource.swift
//  Core
//
//  Created by Djaka Permana on 29/07/23.
//

import Foundation
import RxSwift

public protocol LocalDataSource {
    associatedtype Request
    associatedtype Response
    
    func get(request: Request?) -> Observable<[Response]>
    
    func add(entities: Response) -> Observable<Bool>
    
    func update(request: Request?) -> Observable<Bool>
    
    func delete(request: Request) -> Observable<Bool>
}
