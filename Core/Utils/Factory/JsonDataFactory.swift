//
//  JsonDataFactory.swift
//  Core
//
//  Created by Djaka Permana on 13/08/23.
//

import Foundation

public final class JsonDataFactory {

    public static func from(fileName: String, in bundle: Bundle) -> Data {

        guard let path = bundle.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe) else {
                return Data()
        }

        return data
    }
}
