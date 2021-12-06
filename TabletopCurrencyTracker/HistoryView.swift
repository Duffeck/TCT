//
//  HistoryView.swift
//  TeabletopCurrencyTracker
//
//  Created by user204084 on 12/4/21.
//

import SwiftUI

struct HistoryView: View {
    @Binding var currencyHistory: [Int64]
    @Binding var isShowing: Bool
    
    var accumulator = 0;
    var body: some View {
        ForEach(0 ..< currencyHistory.count, id: \.self) {value in
            //Text(String(self.currencyHistory[value]))
            generateLine(value: self.currencyHistory[value], total: self.currencyHistory[..<(value+1)].reduce(0, +))
        }
    }
    
    private func generateLine (value: Int64, total: Int64) -> Text {
        return Text("\(String(value)) -------> \(String(total))")
    }
}

struct HistoryView_Previews: PreviewProvider {
    @State static var value = true
    @State static var currencyHistory: [Int64] = [50, -2, 3]
    static var previews: some View {
        HistoryView(currencyHistory: self.$currencyHistory, isShowing: self.$value)
    }
}
