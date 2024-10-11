//
//  ViewController.swift
//  Homework7
//
//  Created by chvck on 11.10.2024.
//

import UIKit

class MainPage: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableViewToDos: UITableView!
    
    var toDoList = [ToDosModel]()
    var viewModel = MainPageViewModel()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        searchBar.delegate = self
        tableViewToDos.delegate = self
        tableViewToDos.dataSource = self
       
        
        _ = viewModel.toDoList.subscribe(onNext: { list in
            self.toDoList = list
            self.tableViewToDos.reloadData()
        })
        
       
        

    }//...viewDidLoad
    
    
    override func viewWillAppear(_ animated: Bool) {
        viewModel.toDoUpload()
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsToDo"{
            if let toDo = sender as? ToDosModel{
                let selectedVC = segue.destination as! DetailsToDo
                selectedVC.toDo = toDo
            }
        }
    }
    
    
    
}





extension MainPage : UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if(searchText==""){
            viewModel.toDoUpload()
        }else{
            viewModel.search(searchKey: searchText)
        }
        
    }
    
    
}

extension MainPage : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewToDos") as! ToDosCell
        let toDo = toDoList[indexPath.row]
        cell.lblToDo.text = toDo.todo_name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toDo = toDoList[indexPath.row]
        performSegue(withIdentifier: "toDetailsToDo", sender: toDo)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){contextualAction,view,bool in
            let toDo = self.toDoList[indexPath.row]
            
            let alert = UIAlertController(title: "Delete", message: "Are you sure to delete \(toDo.todo_name!)?", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelAction)
            let okAction = UIAlertAction(title: "Ok", style: .destructive){_ in
                self.viewModel.delete(toDo : toDo)
            }
            alert.addAction(okAction)
            self.present(alert,animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
        
    }
    
    
}

