//
//  PartyCell.swift
//  party-rock-mansion
//
//  Created by R. Maia on 16/10/16.
//  Copyright © 2016 RM. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    //#MARK: @IBOutlets
    @IBOutlet weak var previewImg: UIImageView!
    @IBOutlet weak var videoLbl: UILabel!
    
    //#MARK: Events
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //#MARK: Functions
    func updateUI(with: MusicVideo) {
        videoLbl.text = with.videoTitle
        
        let url = URL(string: with.imageURL)!
        
        DispatchQueue.global().async {
            
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.previewImg.image = UIImage(data: data)
                }
            } catch  {
                //handle the error
            }
            
        }
    }
}
