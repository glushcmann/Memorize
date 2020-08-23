//
//  Array+Only.swift
//  Memorize
//
//  Created by Никита on 23.08.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import Foundation

extension Array {
    
    var only: Element? {
        count == 1 ? first : nil
    }
    
}
