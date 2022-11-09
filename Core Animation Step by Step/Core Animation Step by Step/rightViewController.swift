//
//  rightViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 8/11/22.
//

import UIKit

class rightViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        right_anim()

    }
    
    func right_anim(){
        let redview = UIView(frame: CGRect(x: 100, y: 200, width: 400, height: 400))
        redview.backgroundColor = .red
        view.addSubview(redview)
    }

}
