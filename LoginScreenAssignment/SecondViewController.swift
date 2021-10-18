//
//  SecondViewController.swift
//  LoginScreenAssignment
//
//  Created by Justin Bell on 10/17/21.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    let tableViewArray = ["Amazon", "Walmart", "Target", "Costco", "Ebay", "Best Buy", "Fry's", "Macy's", "JC Penny"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableviewCell")
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableviewCell") //askkkkkk
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell", for: indexPath)
        
        cell.textLabel?.text = self.tableViewArray[indexPath.row]
        
        return cell
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
