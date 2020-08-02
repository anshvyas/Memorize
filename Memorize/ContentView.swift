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
            ForEach(0..<5) {_ in
                Card()
            }
        }
        .padding()
            //This is passed to the inner subviews. It doesn't apply for HStack
            .foregroundColor(.orange)
    }
}

//MARK: Layout for card.
struct Card: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 16.0).stroke(lineWidth: 2.0)
            Text("👻").font(.largeTitle)
        }
    }
}

//MARK: This is for preview pane.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
