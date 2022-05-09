//
//  QuoteManagerProtocol.swift
//  Stocks
//
//  Created by LiewSyetChau on 19/3/22.
//

import Foundation

protocol QuoteManagerProtocol {
    var quotes: [Quote] { get set }
    
    func download(stocks: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void)
}
