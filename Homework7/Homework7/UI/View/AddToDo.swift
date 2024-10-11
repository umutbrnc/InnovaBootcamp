//
//  AddToDo.swift
//  Homework7
//
//  Created by chvck on 11.10.2024.
//

import UIKit

class AddToDo: UIViewController {

    @IBOutlet weak var txtAddToDo: UITextField!
    
    var viewModel = AddToDoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnAddToDoClicked(_ sender: Any) {
        
        if let name = txtAddToDo.text {
            viewModel.save(toDo_name: name)
        }
            
    }
    
    
    
}
