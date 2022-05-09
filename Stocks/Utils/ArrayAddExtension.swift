//
//  ArrayAddExtension.swift
//  Stocks
//
//  Created by LiewSyetChau on 3/4/22.
//

import Foundation

extension Array where Element: Hashable {
    func difference(from other: [Element]) -> [Element] {
        let thisSet = Set(self)
        let otherSet = Set(other)
        return Array(thisSet.symmetricDifference(otherSet))
    }
}
