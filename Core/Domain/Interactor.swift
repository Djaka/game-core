//
//  Interactor.swift
//  Core
//
//  Created by Djaka Permana on 25/07/23.
//

import Foundation
import RxSwift

public struct Interactor<Request, Response, R: Repository>: UseCase  where R.Request == Request, R.Response == Response {
    private var _repository: R
    
    public init(repository: R) {
        _repository = repository
    }
    
    public func execute(request: Request?) -> Observable<Response> {
        _repository.execute(request: request)
    }
}
