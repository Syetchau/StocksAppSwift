//
//  UserDefaultManager.swift
//  Stocks
//
//  Created by LiewSyetChau on 3/4/22.
//

import Foundation

final class UserDefaultManager {
    private static let symbolKey = "SYMBOL_KEY"
    
    var savedSymbols = [String]()
    
    static let shared = UserDefaultManager()
    
    private init() {
        get()
    }
    
    func get() {
        if let saved = UserDefaults.standard.array(forKey: Self.symbolKey)
            as? [String] {
            savedSymbols = saved
        }
    }
    
    func set(symbol: String) {
        savedSymbols.append(symbol)
        UserDefaults.standard.setValue(self.savedSymbols, forKey: Self.symbolKey)
    }
}
