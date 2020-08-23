//
//  MemoryGame.swift
//  Memorize
//
//  Created by Никита on 22.08.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    
    var cards: Array<Card>
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    mutating func choose(card: Card) {
        
        if let chosenIndex = cards.firstIndex(matching: card ), !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMached {
            
            if let potentialMatchIndex = indexOfOneAndOnlyFaceUpCard {
                
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMached = true
                    cards[potentialMatchIndex].isMached = true
                }
                indexOfOneAndOnlyFaceUpCard = nil
                
            } else {
                
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                indexOfOneAndOnlyFaceUpCard = chosenIndex
                
            }
            self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
        }
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
        
        cards.shuffle()
        
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMached: Bool = false
        var content: CardContent
        var id: Int
    }
    
}
