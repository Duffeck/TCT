//
//  FourPlayerView.swift
//  TeabletopCurrencyTracker
//
//  Created by user204084 on 12/4/21.
//

import SwiftUI

struct FourPlayerView: View {
    @State var initialCurrency: Int64
    
    var body: some View {
        let player_1 = Player(
            name: "player_1", currentCurrency: initialCurrency, currencyHistory: [initialCurrency])
        let player_2 = Player(name: "player_2", currentCurrency: initialCurrency, currencyHistory: [initialCurrency])
        let player_3 = Player(name: "player_3", currentCurrency: initialCurrency, currencyHistory: [initialCurrency])
        let player_4 = Player(name: "player_4", currentCurrency: initialCurrency, currencyHistory: [initialCurrency])
        
        VStack{
            HStack {
                PlayerView(player:player_1)
                    .rotationEffect(.degrees(90))
                PlayerView(player:player_2)
                    .rotationEffect(.degrees(-90))
            }
            HStack {
                PlayerView(player:player_3)
                    .rotationEffect(.degrees(90))
                PlayerView(player:player_4)
                    .rotationEffect(.degrees(-90))
            }
        }
    }
}

struct FourPlayerView_Previews: PreviewProvider {
    @State static var initialCurency: Int64 = 50
    static var previews: some View {
        FourPlayerView(initialCurrency: self.initialCurency)
    }
}
