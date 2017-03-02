//
//  PlayerViewController.swift
//  AmazingVid
//
//  Created by Harry Ng on 03/03/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    var videoURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        youtubePlayerView.layer.cornerRadius = 5
        youtubePlayerView.layer.masksToBounds = true

        if videoURL != nil {
            youtubePlayerView.loadVideoURL(videoURL)
        } else {
            let alertController = UIAlertController(title: "Error", message: "There is an error streaming video", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
    }

    @IBAction func closeButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
   
}
