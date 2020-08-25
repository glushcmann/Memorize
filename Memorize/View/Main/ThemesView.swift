//
//  ThemesView.swift
//  Memorize
//
//  Created by Никита on 24.08.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import SwiftUI

struct ThemesView: View {
    
    let emojiGame = EmojiMemoryGame()
    let flagGame = FlagMemoryGame()
    
    var body: some View {
        
        NavigationView {
            
            List() {
                NavigationLink(destination: EmojiMemoryGameView(viewModel: emojiGame)) {
                    ListItemView(gameType: "Halloween", gameData: "😈👻🎃🙀☠️😱")
                }
                NavigationLink(destination: FlagMemoryGameView(viewModel: flagGame)) {
                    ListItemView(gameType: "Flags", gameData: "🏳️🏴󠁧󠁢󠁥󠁮󠁧󠁿🇱🇧🇷🇺🇯🇲🇺🇸")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Themes")
            
        }
    }
}
