//
//  Store.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 06.04.22.
//

import Combine

typealias Store<State> = CurrentValueSubject<State, Never>

extension Store{
  subscript<T>(keyPath: WritableKeyPath<Output, T>) -> T where T: Equatable {
    get { value[keyPath:keyPath] }
    set {
      var value = self.value
      if value[keyPath: keyPath] != newValue {
        value[keyPath: keyPath] = newValue
        self.value = value
      }
    }
  }
  
}
