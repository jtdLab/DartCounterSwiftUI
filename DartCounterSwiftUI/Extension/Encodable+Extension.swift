//
//  Encodable+Extension.swift
//  DartCounterSwiftUI
//
//  Created by Jonas Schlauch on 08.02.21.
//

import Foundation

extension Encodable {
  var dictionary: [AnyHashable: Any]? {
    guard let data = try? JSONEncoder().encode(self) else { return nil }
    return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
  }
}
