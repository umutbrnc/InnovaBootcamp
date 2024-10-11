//
//  ToDosRepo.swift
//  Homework7
//
//  Created by chvck on 11.10.2024.
//

import Foundation
import RxSwift
import CoreData

class ToDosRepo{
    
    var toDoList = BehaviorSubject<[ToDosModel]>(value: [ToDosModel]())
    let context = appDelegate.persistentContainer.viewContext
    
    
    func save(toDo_name:String){

        let toDo = ToDosModel(context: context)
        toDo.todo_name = toDo_name
        
        appDelegate.saveContext()
    }
    
    func update(toDo:ToDosModel,toDo_name:String){
        
        toDo.todo_name = toDo_name
        appDelegate.saveContext()
        
    }
    
    func search(searchKey:String){
        
        do{
            let fetchReq = ToDosModel.fetchRequest()
            fetchReq.predicate = NSPredicate(format: "todo_name CONTAINS[c] %@",searchKey)
            let list = try context.fetch(fetchReq)
            toDoList.onNext(list)
        }catch{}
      
    }
    
    func delete(toDo:ToDosModel){
        
        context.delete(toDo)
        appDelegate.saveContext()
        
    }
    
    func toDoUpload(){

        
        do{
            let fetchReq = ToDosModel.fetchRequest()
            let list = try context.fetch(fetchReq)
            toDoList.onNext(list)
        }catch{}
        
        
    }
    
    
    
    
    
    
}
