//
//  PageY.swift
//  Homework4
//
//  Created by chvck on 22.09.2024.
//

import UIKit

class PageY: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnBackClicked(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
