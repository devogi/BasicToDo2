//
//  ViewController.swift
//  BasicToDo
//
//  Created by oğuzhan salkım on 2.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeTF: UITextField!
    @IBOutlet weak var noteTF: UITextField!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var noteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let savedNote = UserDefaults.standard.object(forKey: "note")
        let savedTime = UserDefaults.standard.object(forKey: "time")
        
        if let receivedNote = savedNote as? String {
            timeLabel.text = "duty: \(receivedNote) "
        }
        
        if let receivedTime = savedTime as? String {
            noteLabel.text = "time: \(receivedTime) "
        }
    }

    @IBAction func saveBtn(_ sender: Any) {
        UserDefaults.standard.set(noteTF.text!, forKey: "note")
        UserDefaults.standard.set(timeTF.text!, forKey: "time")
        
        noteLabel.text = "mission: \(noteTF.text!)"
        timeLabel.text = "overdue: \(timeTF.text!)"
        
       
        
    }
    
    @IBAction func deleteBtn(_ sender: Any) {
    }
}

