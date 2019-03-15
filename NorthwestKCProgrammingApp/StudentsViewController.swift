//
//  ViewController.swift
//  NorthwestKCProgrammingApp
//
//  Created by Bourishetty,Karun on 3/12/19.
//  Copyright © 2019 Bourishetty,Karun. All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {

    @IBOutlet weak var student0LBL: UILabel!
    @IBOutlet weak var student1LBL: UILabel!
    @IBOutlet weak var student2LBL: UILabel!
    
    @IBOutlet weak var studentsNAV: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var students:Team!
    
    override func viewWillAppear(_ animated: Bool) {
        studentsNAV.title = students.teamName
        student0LBL.text = students.teamStudents[0]
        student1LBL.text = students.teamStudents[1]
        student2LBL.text = students.teamStudents[2]
    }
}

