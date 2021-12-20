//
//  GOTService.swift
//  LoginDemoRxRedux
//
//  Created by Fabio Cuomo on 13/11/2018.
//  Copyright © 2018 Mounir Dellagi. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

protocol GOTServiceProtocol {
    func getAllCharacters() -> Single<[GOTCharacter]>
}

final class GOTService: GOTServiceProtocol {
    
    private let url = "https://api.got.show/api/general/characters"
    
    func getAllCharacters(completion: @escaping (APIResult<[GOTCharacter]>) -> Void) {
        Alamofire.request(url, method: .get, encoding: JSONEncoding.default)
            .responseJSON { response in
                if let result = response.result.value {
                    if let json = result as? [String: Any], let books = json["book"] as? [[String: Any]] {
                        let returnBooks = books.map({
                            return GOTCharacter(json: $0)
                        })
                        completion(APIResult.success(self.randomArray(from: returnBooks)))
                    } else {
                        let result: APIResult<[GOTCharacter]> = .error(.serverError)
                        completion(result)
                    }
                } else {
                    let result: APIResult<[GOTCharacter]> = .error(.serverError)
                    completion(result)
                }
        }
    }
    
    func getAllCharacters() -> Single<[GOTCharacter]> {
        return Single
            .create { [weak self] observer in
                self?.getAllCharacters() { result in
                    switch result {
                    case .success(let characters):
                        return observer(.success(characters))
                    case .error(let error):
                        return observer(.error(error))
                    }
                }
                return Disposables.create()
        }
    }

    private func randomArray<T>(from array: [T]) -> [T] {
        let shuffledArray = array.shuffled()
        let n = 10
        return Array(shuffledArray[..<n])
    }
    
}
