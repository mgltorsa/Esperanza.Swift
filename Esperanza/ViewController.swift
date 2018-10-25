//
//  ViewController.swift
//  Esperanza
//
//  Created by Estudiante on 25/10/18.
//  Copyright © 2018 Estudiante. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    @IBOutlet weak var playBtn: UIButton!
    var radioUrl : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("loaded")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playAct(_ sender: Any) {
        loadRadioUrl()
        let _url = NSURL.init(string: radioUrl);
        print("Init url")

        var player : AVPlayer!;
        print("Init empty AVPLayer")
        let _playerItem = AVPlayerItem.init(url: _url! as URL)
        player = AVPlayer.init(playerItem: _playerItem)
        
        
        print("Setted volume")

        player.play();
        
        
    }
    
    func loadRadioUrl(){
        radioUrl = "http://server7.servistreaming.com:10003/stream?type=.mp3";
        print("Loaded radio url")
    }
}

