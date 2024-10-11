//
//  DetailsToDo.swift
//  Homework7
//
//  Created by chvck on 11.10.2024.
//

import UIKit

class DetailsToDo: UIViewController {

    @IBOutlet weak var txtDetailsToDo: UITextField!
    
    var viewModel = DetailsToDoViewModel()
    
    var toDo : ToDosModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let t = toDo{
            txtDetailsToDo.text = t.todo_name
        }
            
            
            
    }

    

    @IBAction func btnUpdateToDoClicked(_ sender: Any) {
        
        
        if let t = toDo, let name = txtDetailsToDo.text{
            viewModel.update(toDo: t, toDo_name: name)
        }
        
        
        
    }
    
    
    
    
}
