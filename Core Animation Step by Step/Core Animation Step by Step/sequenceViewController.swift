//
//  sequenceViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 10/11/22.
//

import UIKit

class sequenceViewController: UIViewController {
    
    let view1 = UIView(frame: CGRect(x: 100, y: 250, width: 300, height: 300))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sequenceAnimation()
        viewEffects()

    }
    
    private func sequenceAnimation(){
        view1.backgroundColor = .magenta
        view.addSubview(view1)
        
        let sequenceAnimation = Animation.sequenceAnimations(animations: [Animation.resizeFrame(resize: CGSizeMake(100, 100), delay: 1.5),Animation.bounce(value: 30, delay: 0.1)])
        self.view1.layer.runAnimation(animation: sequenceAnimation)
        
        
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
