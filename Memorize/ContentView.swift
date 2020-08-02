//
//  ContentView.swift
//  Memorize
//
//  Created by Anshul Vyas on 02/08/20.
//  Copyright © 2020 Anshul Vyas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //This aligns the returned views horizontally.
        HStack{
            //This returns 5 different cards aligned randomly
            ForEach(0..<5) { index in
                CardView(isFaceUp: (index % 2 == 0))
            }
        }
        .padding()
            //This is passed to the inner subviews. It doesn't apply for HStack
            .foregroundColor(.orange)
    }
}

//MARK: Layout for card.
struct CardView: View {
    let isFaceUp: Bool
    
    var body: some View {
        //This stacks views on top of one another along the z-axis.
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 16.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 16.0).stroke(lineWidth: 2.0)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 16.0)
            }
        }
    }
}

//MARK: This is for preview pane.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
