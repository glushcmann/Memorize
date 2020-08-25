//
//  ListItemView.swift
//  Memorize
//
//  Created by Никита on 25.08.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import SwiftUI

struct ListItemView: View {
    
    
//    @ObservedObject var viewModel: EmojiMemoryGame
    
    var gameType: String?
    var gameData: String?
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("\(gameType!)")
                .fontWeight(.heavy)
                .font(.system(size: 20))
                .padding(.bottom, 5)
            
            Text("\(gameData!)")
            
        }
    
    }
}
