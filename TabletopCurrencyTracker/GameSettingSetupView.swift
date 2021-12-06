//
//  GameSettingSetup.swift
//  TabletopCurrencyTracker
//
//  Created by user204084 on 12/6/21.
//

import SwiftUI

struct GameSettingSetupView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var description = ""
    @State var minPlayers : Int16 = 1
    @State var maxPlayers : Int16 = 1
    @State var defaultCurrency = ""
    
    var body: some View {
        Form {
            TextField("Descrição", text: $description)
            //TextField("Minimo de jogadores", text: $minPlayers)
            Stepper(value: $minPlayers, in: 1...4) {
                Text("Mínimo de jogadores: \(minPlayers)")
            }
            Stepper(value: $maxPlayers, in: 1...4) {
                Text("Máximo de jogadores: \(maxPlayers)")
            }
            
            //TextField("Máximo de jogadores", text: $maxPlayers)
            //TextField("Contador inicial", text: $initialCurrency)
            TextField("Contador inicial", text: $defaultCurrency)
                .keyboardType(.numberPad)
            
            Button(action: {
                withAnimation {
                    let newGameSetup = GameSetup(context: viewContext)
                    newGameSetup.gameSetupDescription = description
                    newGameSetup.minPlayers = minPlayers
                    newGameSetup.maxPlayers = maxPlayers
                    newGameSetup.defaultCurrency = Int64(defaultCurrency)!

                    do {
                        try viewContext.save()
                    } catch {
                        let nsError = error as NSError
                        fatalError("Erro ao salvar \(nsError), \(nsError.userInfo)")
                    }
                }
            }) {
                Text("Salvar")
            }
        }
    }
}

struct GameSettingSetupView_Previews: PreviewProvider {
    static var previews: some View {
        GameSettingSetupView()
    }
}
