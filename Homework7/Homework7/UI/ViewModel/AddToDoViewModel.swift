//
//  AddToDoViewModel.swift
//  Homework7
//
//  Created by chvck on 11.10.2024.
//

import Foundation
import RxSwift


class AddToDoViewModel{
 
    var repo = ToDosRepo()
    
    func save(toDo_name:String){
        repo.save(toDo_name: toDo_name)
        
    }
    
    
}
