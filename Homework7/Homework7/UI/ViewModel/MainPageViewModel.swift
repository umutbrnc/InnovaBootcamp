//
//  MainPageViewModel.swift
//  Homework7
//
//  Created by chvck on 11.10.2024.
//

import Foundation
import RxSwift
import CoreData

class MainPageViewModel{
    
    var repo = ToDosRepo()
    var toDoList = BehaviorSubject<[ToDosModel]>(value: [ToDosModel]())
    
    init(){
        toDoList = repo.toDoList
    }
    
    func search(searchKey:String){
        repo.search(searchKey: searchKey)
    }
    func delete(toDo:ToDosModel){
        repo.delete(toDo: toDo)
        repo.toDoUpload()
    }
    func toDoUpload(){
        repo.toDoUpload()
    }
    
}
