//
//  ViewController.swift
//  party-rock-mansion
//
//  Created by R. Maia on 16/10/16.
//  Copyright © 2016 RM. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //#MARK: @IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //#MARK: Properties
    var musicVideos = [MusicVideo]()
    
    //#MARK: Events
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let m1 = MusicVideo(imageURL: "https://i.ytimg.com/vi/ev4bY1SkZLg/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=1yPMxEZXD372YKeq8V8213Z8sJI", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Redfoo - Lights Out (Official 360° Music Video)")
        
        musicVideos.append(m1)
        
        let m2 = MusicVideo(imageURL: "https://i.ytimg.com/vi/ev4bY1SkZLg/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=1yPMxEZXD372YKeq8V8213Z8sJI", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Redfoo - Lights Out (Official 360° Music Video)")
        
        musicVideos.append(m2)
        
        let m3 = MusicVideo(imageURL: "https://i.ytimg.com/vi/ev4bY1SkZLg/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=1yPMxEZXD372YKeq8V8213Z8sJI", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Redfoo - Lights Out (Official 360° Music Video)")
        
        musicVideos.append(m3)
        
        let m4 = MusicVideo(imageURL: "https://i.ytimg.com/vi/ev4bY1SkZLg/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=1yPMxEZXD372YKeq8V8213Z8sJI", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Redfoo - Lights Out (Official 360° Music Video)")
        
        musicVideos.append(m4)
        
        let m5 = MusicVideo(imageURL: "https://i.ytimg.com/vi/ev4bY1SkZLg/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=1yPMxEZXD372YKeq8V8213Z8sJI", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Redfoo - Lights Out (Official 360° Music Video)")
        
        musicVideos.append(m5)
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            cell.updateUI(with: musicVideos[indexPath.row])
            return cell
        }
         
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicVideos.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let musicVideo = musicVideos[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: musicVideo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC  {
            if let musicVideo = sender as? MusicVideo {
                destination.musicVideo = musicVideo
            }
        }
    }
    
}

