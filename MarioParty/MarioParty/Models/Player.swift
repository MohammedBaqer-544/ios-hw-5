//
//  Player.swift
//  MarioParty
//
//  Created by moahammed on 7/2/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import Foundation

struct Player {
    var name: String
    
    func bgName() -> String {
        return name + "BG"
    }
    
    func CharacterSounds() -> String {
        return name + ".WAV"
    }
}


var players: [Player] = [
    
    Player(name: "Bowser"),
    Player(name: "Koopa" ),
    Player(name: "Luigi" ),
    Player(name: "Mario" ),
    Player(name: "Peach" ),
    Player(name: "Waluigi" ),
    Player(name: "Yoshi" )
    
]
