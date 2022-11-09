//
//  bottomViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 9/11/22.
//

import UIKit

class bottomViewController: UIViewController {

    let greenView = UIView(frame: CGRect(x: 45, y: 250, width: 300, height: 300))
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        bottom_anim()
        springAnimation()
        
    }
    
    func bottom_anim() {
        greenView.backgroundColor = .systemGreen
        let animation = CABasicAnimation()
        animation.keyPath = "position.y"
        animation.fromValue = 2000
        animation.toValue  = 400
        animation.duration = 0.95
        
        greenView.layer.add(animation, forKey: "basic")
        view.addSubview(greenView)
        
    }
    
    func springAnimation(){
        let jump = CASpringAnimation(keyPath: "transform.scale")
        jump.damping = 100
        jump.mass = 20
        jump.initialVelocity = 10
        jump.stiffness = 1500.0
        jump.fromValue = 0
        jump.toValue = 1
        jump.duration = jump.settlingDuration
        greenView.layer.add(jump, forKey: nil)
    }

}
