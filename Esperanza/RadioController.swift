//
//  radioController.swift
//  Esperanza
//
//  Created by Estudiante on 25/10/18.
//  Copyright © 2018 Estudiante. All rights reserved.
//

import Foundation
import AVKit

class RadioController {
    
    var radioUrl : String
    
    init() {
        radioUrl="";
    }
    
    func loadRadioUrl(_strUrl : String){
        radioUrl = _strUrl
        let _url = createUrl(_strUrl: radioUrl)
        let player = createAVPlayer(_url: _url)
        player.volume=1.0
        player.play();
        
    }
    
    func createAVPlayer(_url : URL) ->AVPlayer{
        let player = AVPlayer.init(url: _url as URL)
        return player
    }
    
    func createUrl(_strUrl : String) -> URL {
        let _url = URL.init(string: _strUrl)
        
        return _url!
    }
}
