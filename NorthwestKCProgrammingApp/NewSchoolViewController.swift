//
//  NewSchoolViewController.swift
//  NorthwestKCProgrammingApp
//
//  Created by Bourishetty,Karun on 3/12/19.
//  Copyright © 2019 Bourishetty,Karun. All rights reserved.
//

import UIKit

class NewSchoolViewController: UIViewController {

    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var coachTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
        if NameTF.text! == "" || coachTF.text! == ""{
            let alert = UIAlertController(title: "Alert!",
                                          message: "Enter the values",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default,
                                          handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else{
        Schools.shared.add(school: School(name: NameTF.text!,coach: coachTF.text!))
        self.dismiss(animated: true, completion: nil)
        //print(Schools.shared.numSchools())
        }
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
