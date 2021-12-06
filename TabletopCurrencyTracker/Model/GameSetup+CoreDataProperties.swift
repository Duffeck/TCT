//
//  GameSetup+CoreDataProperties.swift
//  TabletopCurrencyTracker
//
//  Created by user204084 on 12/5/21.
//
//

import Foundation
import CoreData


extension GameSetup {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GameSetup> {
        return NSFetchRequest<GameSetup>(entityName: "GameSetup")
    }

    @NSManaged public var gameSetupDescription: String?
    @NSManaged public var minPlayers: Int16
    @NSManaged public var maxPlayers: Int16
    @NSManaged public var defaultCurrency: Int64

}

extension GameSetup : Identifiable {

}
