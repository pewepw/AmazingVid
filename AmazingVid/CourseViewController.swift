//
//  CourseViewController.swift
//  AmazingVid
//
//  Created by Harry Ng on 02/03/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController {
    

    @IBOutlet weak var chefCourseButton: UIButton!
    @IBOutlet weak var popStarCourseButton: UIButton!
    @IBOutlet weak var developerCourseButton: UIButton!
    
    var courses = CourseStore.downloadNewCourses()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    func updateUI() {
        let chefCourse = courses[0]
        let popStarCourse = courses[1]
        let developerCourse = courses[2]
        chefCourseButton.setImage(chefCourse.buttonImage, for: [])
        popStarCourseButton.setImage(popStarCourse.buttonImage, for: [])
        developerCourseButton.setImage(developerCourse.buttonImage, for: [])
    }
  
    @IBAction func chefCourseDidTap(_ sender: Any) {
    }
    
    @IBAction func popStarCourseDidTap(_ sender: Any) {
    }
    
    @IBAction func developerCourseDidTap(_ sender: Any) {
    }
    
}

