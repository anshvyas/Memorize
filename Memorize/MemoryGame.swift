//
//  MemoryGame.swift
//  Memorize
//
//  Created by Anshul Vyas on 03/08/20.
//  Copyright © 2020 Anshul Vyas. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    let cards: [Card]
    
    init(cardPairs: Int, cardContentFactory: (Int) -> CardContent) {
        var cards: [Card] = []
        for pairIndex in 0..<cardPairs {
            let cardContent = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: cardContent))
            cards.append(Card(isFaceUp: false, isMatched: false, content: cardContent))
        }
        
        self.cards = cards
    }
    func choose(card: Card) {
        print("Card Chosen: \(card)")
    }
    
    struct Card {
        let isFaceUp: Bool
        let isMatched: Bool
        let content: CardContent
    }
}
