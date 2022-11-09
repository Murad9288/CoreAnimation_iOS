//
//  imageViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 7/11/22.
//

import UIKit

class imageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        left_anim()
        
    }
    
    func left_anim(){
        let greenView = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        greenView.bounds = CGRect(x: 40, y: 40, width: 300, height: 300)
        greenView.backgroundColor = .cyan
        view.addSubview(greenView)
        
    }

}
