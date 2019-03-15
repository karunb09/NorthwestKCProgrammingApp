//
//  NewTeamViewController.swift
//  NorthwestKCProgrammingApp
//
//  Created by Bourishetty,Karun on 3/12/19.
//  Copyright © 2019 Bourishetty,Karun. All rights reserved.
//

import UIKit

class NewTeamViewController: UIViewController {

    @IBOutlet weak var teamNameLBL: UITextField!
    @IBOutlet weak var student0LBL: UITextField!
    @IBOutlet weak var student1LBL: UITextField!
    @IBOutlet weak var student2LBL: UITextField!
    

    @IBOutlet weak var newTeamNAV: UINavigationItem!
    
    var testschool:School!
    
    @IBAction func done(_ sender: Any) {
        let students:[String] = [student0LBL.text!, student1LBL.text!, student2LBL.text!]
 
        testschool.addTeam(name: teamNameLBL.text!, students: students)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        newTeamNAV.title = testschool.name
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
