//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Anshul Vyas on 03/08/20.
//  Copyright © 2020 Anshul Vyas. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private let memoryGame: MemoryGame<String>
    
    init(cardPairs: Int) {
        let emojis: [String] = ["👻", "🎃", "🕷"]
        self.memoryGame = MemoryGame<String>(cardPairs: cardPairs) { (pairIndex) -> String in
            return emojis[pairIndex % emojis.count]
        }
    }
    
    var cards: [MemoryGame<String>.Card] {
        return memoryGame.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        memoryGame.choose(card: card)
    }
}
