//
//  ContentView.swift
//  Memorize
//
//  Created by Anshul Vyas on 02/08/20.
//  Copyright © 2020 Anshul Vyas. All rights reserved.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var emojiGameViewModel: EmojiMemoryGame
    private let gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: gridItemLayout){
            //This returns n different cards aligned randomly
            ForEach(emojiGameViewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        emojiGameViewModel.choose(card: card)
                    }
                    .frame(width: ViewConstants.cardWidth, height: ViewConstants.cardHeight, alignment: .center)
            }
        }.padding()
        //This is passed to the inner subviews. It doesn't apply for HStack
        .foregroundColor(.orange)
    }
}

//MARK: Layout for card.
struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        //This stacks views on top of one another along the z-axis.
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 16.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 16.0).stroke(lineWidth: 2.0)
                Text(card.content).font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 16.0)
            }
        }
    }
}

//MARK: This is for preview pane.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(emojiGameViewModel: EmojiMemoryGame(cardPairs: 12))
    }
}
