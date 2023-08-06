//
//  GetViewModel.swift
//  GameInfoAdvance
//
//  Created by Djaka Permana on 06/08/23.
//

import Foundation
import RxSwift

public class GetViewModel<Request, Response, Interactor: UseCase> where Interactor.Request == Request, Interactor.Response == Response {
    
    private let disposeBag = DisposeBag()
    private let _useCase: Interactor
    
    public init(useCase: Interactor) {
        _useCase = useCase
    }
    
    public func getViewModel(request: Request?) -> Observable<Response> {
        return _useCase.execute(request: request)
    }
    
}
