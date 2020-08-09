//
//  MemoryGame.swift
//  Memorize
//
//  Created by Anshul Vyas on 03/08/20.
//  Copyright © 2020 Anshul Vyas. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    init(cardPairs: Int, cardContentFactory: (Int) -> CardContent) {
        var cards: [Card] = []
        for pairIndex in 0..<cardPairs {
            let cardContent = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, isFaceUp: true, isMatched: false, content: cardContent))
            cards.append(Card(id: pairIndex * 2 + 1, isFaceUp: true, isMatched: false, content: cardContent))
        }
        
        self.cards = cards.shuffled()
    }
    
    mutating func choose(card: Card) {
        print("Card Chosen: \(card)")
        if let chosenIndex = self.cards.firstIndex(where: { $0.id == card.id }) {
            self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
        }
    }
    
    struct Card: Identifiable {
        let id: Int
        var isFaceUp: Bool
        let isMatched: Bool
        let content: CardContent
    }
}
