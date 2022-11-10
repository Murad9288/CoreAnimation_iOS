//
//  ViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 5/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var animationtextName = ["Left-side Animation","Right-side Animation","Top Animation","Bottom Animation","Under Bounce Animation","Circle Animation","Rotation Animation","Bounce Animation","Position Animation","Sequence Animation","Transform Show"]
    
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
        let view = UIView()
        cell.configure(name1: animationtextName[indexPath.row])
        view.backgroundColor = UIColor.cyan
        cell.selectedBackgroundView = view
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            let st = UIStoryboard(name: "left_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "leftViewController") as! leftViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 1 {
            
            let st = UIStoryboard(name: "Right_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "rightViewController") as! rightViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        } else if indexPath.row == 2 {
            let st = UIStoryboard(name: "top_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "topViewController") as! topViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 3 {
            let st = UIStoryboard(name: "bottom_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "bottomViewController") as! bottomViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 4 {
            let st = UIStoryboard(name: "under_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "underViewController") as! underViewController
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 5 {
            let st = UIStoryboard(name: "circle_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "circleViewController") as! circleViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        } else if indexPath.row == 6 {
            let st = UIStoryboard(name: "rotation_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "rotationViewController") as! rotationViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 7 {
            let st = UIStoryboard(name: "bounce_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "bounceViewController") as! bounceViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 8 {
            let st = UIStoryboard(name: "position_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "positionViewController") as! positionViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 9 {
            let st = UIStoryboard(name: "sequence_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "sequenceViewController") as! sequenceViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
            
        } else if indexPath.row == 10 {
            let st = UIStoryboard(name: "transform_Storyboard", bundle: nil)
            let vc = st.instantiateViewController(withIdentifier: "transformViewController") as! transformViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
