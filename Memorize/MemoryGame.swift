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
    
    func choose(card: Card) {
        print("Card Chosen: \(card)")
    }
    
    struct Card {
        let isFaceUp: Bool
        let isMatched: Bool
        let content: CardContent
    }
}
