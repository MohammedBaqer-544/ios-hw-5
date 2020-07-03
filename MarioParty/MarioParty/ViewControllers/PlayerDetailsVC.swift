//
//  PlayerDetailsVC.swift
//  MarioParty
//
//  Created by moahammed on 7/2/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerDetailsVC: UIViewController {
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var bgImageView: UIImageView!
    
    var CharactorSoundEffect: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLable.text = selecedPlayer.name
        imageView.loadGif(name: selecedPlayer.name)
        bgImageView.image = UIImage(named: selecedPlayer.bgName())
        
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func randomizeStars(_ sender: UIButton) {
        let stars = ["Star1", "Star2", "Star3", "Star4", "Star5"]
        let randomStar = stars.randomElement()!
        starsImageView.image = UIImage(named: randomStar)
    }
    @IBAction func playCharactarMusic(_ sender: UIButton) {
        playMusic(musicName: selecedPlayer.CharacterSounds())
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
    
}
