//
//  FlagsMemoryGame.swift
//  Memorize
//
//  Created by Никита on 25.08.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import SwiftUI

class FlagMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String> = FlagMemoryGame.createMemoryGame()
         
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🏳️", "🏴󠁧󠁢󠁥󠁮󠁧󠁿", "🇱🇧", "🇷🇺", "🇯🇲", "🇺🇸"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}

