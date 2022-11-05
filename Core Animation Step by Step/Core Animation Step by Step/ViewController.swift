//
//  ViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 5/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var animationtextName = ["murad","kahem"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
        
    }
    
    func tableViewSetup(){
        let nib = UINib(nibName: "animationTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
        
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animationtextName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! animationTableViewCell
        cell.configure(name1: animationtextName[indexPath.row])
        return cell
    }
    
    
}
