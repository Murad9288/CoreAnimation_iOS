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
        viewEffects()
        
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
    
    private func viewEffects(){
        
        // MARK: View shadow Effects
        
        // Creating rounder corners
        greenView.layer.cornerRadius = 10

        // Adding shadow effects
        greenView.layer.shadowOffset = CGSizeMake(5,5)
        greenView.layer.shadowOpacity = 0.7
        greenView.layer.shadowRadius = 3
        greenView.layer.shadowColor = UIColor(red: 20/225, green: 20/225, blue: 10/255, alpha: 0.7).cgColor
        
        // Applying borders
        greenView.layer.borderColor = UIColor(red: 40/225, green: 10/225, blue: 20/255, alpha: 0.1).cgColor

        greenView.layer.borderWidth = 3
    }

}
