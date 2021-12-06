//
//  GameSetupView.swift
//  TeabletopCurrencyTracker
//
//  Created by user204084 on 12/4/21.
//

import SwiftUI

struct GameStartView: View {
    @State var gameSetup: GameSetup
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: OnePlayerView(initialCurrency: gameSetup.defaultCurrency)) {
                    createPlayerNumberDigit("1")
                    
                }
                NavigationLink(destination: TwoPlayerView(initialCurrency: gameSetup.defaultCurrency)) {
                    createPlayerNumberDigit("2")
                    
                }
            }
            HStack {
                NavigationLink(destination: ThreePlayerView(initialCurrency: gameSetup.defaultCurrency)) {
                    createPlayerNumberDigit("3")
                    
                }
                NavigationLink(destination: FourPlayerView(initialCurrency: gameSetup.defaultCurrency)) {
                    createPlayerNumberDigit("4")
                    
                }
            }
            
            
        }
    }
    
    func createPlayerNumberDigit(_ number: String) -> some View	 {
        return Text(number)
            .frame(minWidth: 0, maxWidth: 300)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .font(.title)
    }
}

struct GameSetupStartView_Previews: PreviewProvider {
    @State static var gameSetup = GameSetup()
    static var previews: some View {
        GameStartView(gameSetup: gameSetup)
    }
}
