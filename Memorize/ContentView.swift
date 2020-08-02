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
        ZStack {
            RoundedRectangle(cornerRadius: 16.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 16.0).stroke(lineWidth: 2.0)
            Text("👻").font(.largeTitle)
        }
        .padding()
            //The foreground color doesn't make sense for a Zstack.
            //So it is passed down to all the views inside it.
            .foregroundColor(.orange)
    }
}

//MARK: This is for preview pane.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
