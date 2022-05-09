//
//  NewsHeaderView.swift
//  Stocks
//
//  Created by LiewSyetChau on 2/4/22.
//

import SwiftUI

struct NewsHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top News")
                .font(.title)
                .foregroundColor(.white)
            
            HStack(spacing: 2) {
                Text("From")
                
                Image(systemName: "applelogo")
                
                Text("NewsAPI")
            }
            .font(.title2)
            .foregroundColor(.gray)
            
            RoundedRectangle(cornerRadius: 2)
                .fill(.gray)
                .frame(height: 1)
        }
    }
}

struct NewsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        NewsHeaderView()
    }
}
