//
//  Player.swift
//  TeabletopCurrencyTracker
//
//  Created by user204084 on 12/3/21.
//

import Foundation

struct Player {
    var name: String = ""
    var currentCurrency: Int64 = 0
    var currencyHistory: [Int64] = []
    
    func displayCurrentCurrency() -> String{
        return String(currentCurrency)
    }
}
