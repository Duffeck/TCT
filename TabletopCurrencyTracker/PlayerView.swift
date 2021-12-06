//
//  PlayerView.swift
//  TeabletopCurrencyTracker
//
//  Created by user204084 on 12/1/21.
//

import SwiftUI

struct PlayerView: View {
    @State var showingCalculator: Bool = false
    @State var showingHistory: Bool = false
    @State var player: Player
    var body: some View {
            HStack {
                VStack {
                    Button(action: {
                        self.showingHistory.toggle()
                    }) {
                        Text("H")
                    }.sheet(isPresented: $showingHistory) {
                        HistoryView(
                            currencyHistory: self.$player.currencyHistory,
                            isShowing: self.$showingHistory)
                    }
                    Button("-") {
                        player.currentCurrency-=1
                        player.currencyHistory.append(-1)
                        
                    }.padding()
                }
                HStack {
                    Text("\(player.currentCurrency)").font(.system(size: 50)).padding().frame(maxWidth: .infinity, maxHeight: .infinity);
                }
                VStack {
                    Button(action: {
                        self.showingCalculator.toggle()
                    }) {
                        Text("C")
                    }.sheet(isPresented: $showingCalculator) {
                        CalculatorView(
                            player: self.$player,
                            isShowing: self.$showingCalculator)
                    }
                    Button("+") {
                        player.currentCurrency+=1
                        player.currencyHistory.append(1)
                        
                    }.padding()
                }
            }
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(showingCalculator: false, showingHistory: false, player: Player())
    }
}
