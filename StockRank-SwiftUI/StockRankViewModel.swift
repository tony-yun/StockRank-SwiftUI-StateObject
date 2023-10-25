//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by 윤태웅 on 10/25/23.
//

import Foundation
import SwiftUI

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavourite: Int {
        let favouriteStocks = models.filter({ $0.isFavourite })
        return favouriteStocks.count
    }
}
