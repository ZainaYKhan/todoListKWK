//
//  completeToDoViewController.swift
//  todoList
//
//  Created by Zaina Khan on 8/2/22.
//

import UIKit

class completeToDoViewController: UIViewController {
    var previousVC = To_DoTableViewController()
    var selectedToDo : ToDoCD?
    @IBOutlet weak var titleLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLable.text = selectedToDo?.name
    }
    
    @IBAction func tappedComplete(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        if let theToDo = selectedToDo{
            context.delete(theToDo)
            navigationController?.popViewController(animated: true)
        }
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
