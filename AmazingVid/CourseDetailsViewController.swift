//
//  CourseDetailsViewController.swift
//  AmazingVid
//
//  Created by Harry Ng on 02/03/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//

import UIKit

class CourseDetailsViewController: UIViewController {

    @IBOutlet weak var joinCourseButton: UIButton!
    @IBOutlet weak var courseTitleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var courseFeaturedImageView: UIImageView!
    
    var course : Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        courseFeaturedImageView.image = course.featuredImage
        courseTitleLabel.text = course.title
        descriptionTextView.text = course.description
        joinCourseButton.setTitle("Join \(course.instructor)", for: [])
        
        
        self.navigationItem.title = course.instructor
        joinCourseButton.layer.cornerRadius = 5
        joinCourseButton.layer.masksToBounds = true
    }
    
    @IBAction func playButtonDidTap(_ sender: Any) {
        
        
    }

    @IBAction func joinCourseButtonDidTap(_ sender: Any) {
        let alertController = UIAlertController(title: "Congratulations!", message: "You just enrolled in \(course.title) successfully.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "YoutubeSegue" {
            if let playerVC = segue.destination as? PlayerViewController {
                playerVC.videoURL = course.introductionVideoURL
            }
        }
    }
    

   
}
