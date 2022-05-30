//
//  Game.swift
//  Bullseye
//
//  Created by BD Macbook Air B on 29/5/22.
//

import Foundation

struct Game{
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}
