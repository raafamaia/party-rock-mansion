//
//  MusicVideo.swift
//  party-rock-mansion
//
//  Created by R. Maia on 16/10/16.
//  Copyright © 2016 RM. All rights reserved.
//

import Foundation

class MusicVideo {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        get {
            return _imageURL
        }
    }
    
    var videoURL: String {
        get {
            return _videoURL
        }
    }
    
    var videoTitle: String {
        get {
            return _videoTitle
        }
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        self._imageURL = imageURL
        self._videoURL = videoURL
        self._videoTitle = videoTitle
    }
}
