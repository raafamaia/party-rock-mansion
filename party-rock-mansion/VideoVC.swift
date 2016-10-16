//
//  VideoVC.swift
//  party-rock-mansion
//
//  Created by R. Maia on 16/10/16.
//  Copyright © 2016 RM. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _musicVideo: MusicVideo!
    var musicVideo: MusicVideo {
        get {
            return _musicVideo
        }
        
        set {
            _musicVideo = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = musicVideo.videoTitle
        webView.loadHTMLString(musicVideo.videoURL, baseURL: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
