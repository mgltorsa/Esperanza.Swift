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
        var _url = createUrl(String: radioUrl);
        createAVPlayer(_url)
        
    }
    
    func createAVPlayer(_url : URL) ->AVPlayer{
        var player = AVPlayer.init(url: _url! as URL);
    }
    
    func createUrl(_strUrl : String) -> URL {
        var _url = URL.init(string: _strUrl)
        
        return _url
    }
}
