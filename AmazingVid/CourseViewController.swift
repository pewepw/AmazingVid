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
    var selectedCourse : Course!
    

    
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
        let chefCourse = self.courses[0]
        selectedCourse = chefCourse
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    
    @IBAction func popStarCourseDidTap(_ sender: Any) {
        let popStarCourse = self.courses[1]
        selectedCourse = popStarCourse
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)

    }
    
    @IBAction func developerCourseDidTap(_ sender: Any) {
        let developerCourse = self.courses[2]
        selectedCourse = developerCourse
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)

    }
    
    struct  Storyboard {
        static let showCourseDetail = "ShowCourseDetail"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.showCourseDetail {
            if let courseDetailViewController = segue.destination as? CourseDetailsViewController {
                courseDetailViewController.course = self.selectedCourse
            }
        }
    }
    
}

