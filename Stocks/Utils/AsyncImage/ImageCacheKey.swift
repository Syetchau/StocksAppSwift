//
//  ImageCacheKey.swift
//  Stocks
//
//  Created by LiewSyetChau on 2/4/22.
//

import SwiftUI

struct ImageCacheKey: EnvironmentKey {
    static let defaultValue: ImageCache = TempImageCache()
}

extension EnvironmentValues {
    var imageCache: ImageCache {
        get{
            self[ImageCacheKey.self]
        }
        set {
            self[ImageCacheKey.self] = newValue
        }
    }
}

