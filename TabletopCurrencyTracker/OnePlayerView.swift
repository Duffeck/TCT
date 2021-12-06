//
//  OnePlayerView.swift
//  TeabletopCurrencyTracker
//
//  Created by user204084 on 12/4/21.
//

import SwiftUI

struct OnePlayerView: View {
    @State var initialCurrency: Int64
    
    var body: some View {
        let player = Player(
            name: "player_1", currentCurrency: initialCurrency, currencyHistory: [initialCurrency])
        
        VStack{
            Spacer()
            PlayerView(player:player)
            Spacer()
        }
    }
}

struct OnePlayerView_Previews: PreviewProvider {
    @State static var initialCurency: Int64 = 50
    static var previews: some View {
        OnePlayerView(initialCurrency: self.initialCurency)
    }
}
