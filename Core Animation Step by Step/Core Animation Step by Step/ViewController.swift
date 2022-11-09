//
//  ViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 5/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var animationtextName = ["Left-side Animation","Right-side Animation"]
    
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

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        for i in 1...2 {
            print(i)
            if i == 1 {
                let st = UIStoryboard(name: "ImageViewVC", bundle: nil)
                let vc = st.instantiateViewController(withIdentifier: "imageViewController") as! imageViewController
                
                self.navigationController?.pushViewController(vc, animated: true)
            }else if i == 2 {

                let st = UIStoryboard(name: "Right_Storyboard", bundle: nil)
                let vc = st.instantiateViewController(withIdentifier: "rightViewController") as! rightViewController
                
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        
    }
}
