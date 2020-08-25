//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Никита on 22.08.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        VStack {
            
            Grid(items: viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            .padding(5)
            }
            
            Text("Score: ...")
                .fontWeight(.heavy)
                .font(.system(size: 25))
            
        }
        .navigationBarTitle("Halloween")
        .navigationBarItems(trailing:
            Button("New Game") {
                print("Help tapped!")
            }
            .foregroundColor(.blue)
        )
        .padding()
        .foregroundColor(.orange)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
