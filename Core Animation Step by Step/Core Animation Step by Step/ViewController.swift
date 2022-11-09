//
//  ViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 5/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var animationtextName = ["Left-side Animation","Right-side Animation","Top Animation","Bottom Animation","Under Bounce Animation"]
    
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
        
        if indexPath.row == 0 {
            let st = UIStoryboard(name: "ImageViewVC", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "imageViewController") as! imageViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 1 {
            
            let st = UIStoryboard(name: "Right_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "rightViewController") as! rightViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 2 {
            let st = UIStoryboard(name: "top_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "topViewController") as! topViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 3 {
            let st = UIStoryboard(name: "bottom_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "bottomViewController") as! bottomViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else if indexPath.row == 4 {
            let st = UIStoryboard(name: "under_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "underViewController") as! underViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
