//
//  DetailsToDoViewModel.swift
//  Homework7
//
//  Created by chvck on 11.10.2024.
//

import Foundation


class DetailsToDoViewModel{
    
    var repo = ToDosRepo()
    
    func update(toDo:ToDosModel,toDo_name:String){
        repo.update(toDo: toDo, toDo_name: toDo_name)
    }
    

    
}
