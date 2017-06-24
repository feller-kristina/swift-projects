//
//  ViewController.swift
//  SoundPlayer
//
//  Created by ccsfcomputers on 5/2/17.
//  Copyright © 2017 ccsfcomputers. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Button(_ sender: UIButton) {
        //if sender.titleLabel != nil{
        //if sender.titleLabel!.text != nil{
        //playSound(soundName: sender.titleLabel!.text!)
        // }
        // }
        playSound(soundName: "guitar")
        }
    

    @IBAction func bubblesButton(_ sender: UIButton) {
        playSound(soundName: "bubbles")
    }
    
    func playSound(soundName: String){
        print("play guitar sound")
        
        
        //opem guitar sound file amd make sure it exists
        let sound = NSDataAsset(name: soundName)
        if sound == nil {
            print("can't open \(soundName) sound")
            return
        }
        //try to start an audio session to play back the sound and make sure that worked
        do{
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch{
            print("error opening up audio session")
            return
        }
        
        do {
            player = try AVAudioPlayer(data: sound!.data)
            
            player!.play()
        } catch {
            print("error playing \(soundName) file")
        }

        
    }
}
