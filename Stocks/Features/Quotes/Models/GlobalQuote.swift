//
//  GlobalQuote.swift
//  Stocks
//
//  Created by LiewSyetChau on 19/3/22.
//

import Foundation

struct GlobalQuoteResponse: Codable {
    var quote: Quote
    
    private enum CodingKeys: String, CodingKey {
        case quote = "Global Quote"
    }
}

