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
    
    func list(request: Request?) -> Observable<[Response]>
    func add(entities: [Response]) -> Observable<Bool>
    func get(id: String) -> Observable<Bool>
    func update(id: Int, entity: Response) -> Observable<[Response]>
}
