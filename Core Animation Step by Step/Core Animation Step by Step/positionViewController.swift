//
//  positionViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 10/11/22.
//

import UIKit

class positionViewController: UIViewController {

    let view1 = UIView(frame: CGRect(x: 5, y: 100, width: 300, height: 300))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        positionAnimation()
        viewEffects()

    }
    
    private func positionAnimation(){
        view1.backgroundColor = .brown
        let animation = Animation.movePosition(position: CGPointMake(45, 300), delay: 1.5)
        self.view1.layer.runAnimation(animation: animation)
        view.addSubview(view1)
    }
    
    private func viewEffects(){
        
        // MARK: View shadow Effects
        
        // Creating rounder corners
        view1.layer.cornerRadius = 10

        // Adding shadow effects
        view1.layer.shadowOffset = CGSizeMake(5,5)
        view1.layer.shadowOpacity = 0.7
        view1.layer.shadowRadius = 3
        view1.layer.shadowColor = UIColor(red: 20/225, green: 20/225, blue: 10/255, alpha: 0.7).cgColor
        
        // Applying borders
        view1.layer.borderColor = UIColor(red: 40/225, green: 10/225, blue: 20/255, alpha: 0.1).cgColor

        view1.layer.borderWidth = 3

    }

    
}
