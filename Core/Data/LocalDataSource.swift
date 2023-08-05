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
    func add(entities: Response) -> Observable<Bool>
    func find(keywoard: String) -> Observable<[Response]>
    func delete(id: Int) -> Observable<Bool>
}
