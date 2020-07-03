//
//  ViewController.swift
//  MarioParty
//
//  Created by Dalal Alhazeem on 3/24/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

var selecedPlayer = Player(name: "Bowser")

class ViewController: UIViewController {
    
    @IBOutlet weak var playerImageView: UIImageView!
    
    var CharactorSoundEffect: AVAudioPlayer?
    var bgMusic: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerImageView.loadGif(name: selecedPlayer.name)

        // Do any additional setup after loading the view.
        //nextButton.isUserInteractionEnabled = false
        playBgMusic(musicName: "BG.wav")
    }
    
    
    func playBgMusic(musicName: String){
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            bgMusic = try AVAudioPlayer(contentsOf: url)
            bgMusic?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    
    func playMusic(musicName: String){
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            CharactorSoundEffect = try AVAudioPlayer(contentsOf: url)
            CharactorSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    
    @IBAction func randomPlayer(_ sender: UIButton) {
        
        let randomPlayer = players.randomElement()!
        playMusic(musicName: randomPlayer.CharacterSounds())
        selecedPlayer = randomPlayer
        playerImageView.loadGif(name: selecedPlayer.name)
    }
    
}

