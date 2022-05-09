//
//  SearchManager.swift
//  Stocks
//
//  Created by LiewSyetChau on 3/4/22.
//

import Foundation

final class SearchManager: ObservableObject {
    @Published var searches = [Search]()
    
    func searchStocks(keyword: String) {
        NetworkManager<SearchResponse>().fetch(
            from: URL(string: API.symbolSearchUrl(for: keyword))!) { (result) in
                switch result {
                case .failure(let error):
                    print(error)
                case . success(let response):
                    DispatchQueue.main.async {
                        self.searches = response.bestMatches
                    }
                }
            }
    }
}
