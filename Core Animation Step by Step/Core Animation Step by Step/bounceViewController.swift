//
//  bounceViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 10/11/22.
//

import UIKit

class bounceViewController: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var labeltext: UILabel!
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bounceAnimation()
        viewEffects()

    }
    
    private func bounceAnimation(){
        
        view1.backgroundColor = .orange
        labeltext.textColor = .black
        view.addSubview(view1)
        view.addSubview(labeltext)
        
        let move = Animation.sequenceAnimations(animations: [Animation.movePosition(position: CGPointMake(40, 195), delay: 1.5),
                                                             Animation.movePosition(position: CGPointMake(40, 205), delay: 3)])
        
        let move2 = Animation.sequenceAnimations(animations: [Animation.movePosition(position: CGPointMake(25, 300), delay: 1.5),
                                                             Animation.movePosition(position: CGPointMake(25, 310), delay: 3)])

        let bounce = Animation.bounce(value: 20, delay: 0.50)
        let repeatBouceForEver = Animation.repeatAnimations(count: Repeat.Infinity, animationParam: bounce)
        let repeatMove = Animation.repeatAnimations(count: Repeat.Count(10), animationParam: move)
        
        let repeatMove2 = Animation.repeatAnimations(count: Repeat.Count(5), animationParam: move2)

        self.view1.layer.runAnimation(animation: repeatBouceForEver)
        self.view1.layer.runAnimation(animation: repeatMove)
        self.labeltext.layer.runAnimation(animation: repeatBouceForEver)
        self.labeltext.layer.runAnimation(animation: repeatMove2)
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
