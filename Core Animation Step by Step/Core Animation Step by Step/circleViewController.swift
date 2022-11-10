//
//  circleViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 10/11/22.
//

import UIKit

class circleViewController: UIViewController {
    
    let view1 = UIView(frame: CGRect(x: 0, y: 100, width: 90, height: 90))
    let view2 = UIView(frame: CGRect(x: 0, y: 100, width: 90, height: 90))
    let view3 = UIView(frame: CGRect(x: 0, y: 100, width: 90, height: 90))
    let view4 = UIView(frame: CGRect(x: 0, y: 100, width: 90, height: 90))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        allViewSetup()
        circleAnimation()
        

    }
    
    private func allViewSetup(){
        
        // MARK: All view color change
        view1.backgroundColor = .green
        view2.backgroundColor = .cyan
        view3.backgroundColor = .darkText
        view4.backgroundColor = .systemPink
        
        // MARK: rectangle to circle convert view
        view1.layer.cornerRadius = view1.layer.bounds.width/2
        view2.layer.cornerRadius = view2.layer.bounds.width/2
        view3.layer.cornerRadius = view3.layer.bounds.width/2
        view4.layer.cornerRadius = view4.layer.bounds.width/2

        
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        
        
    }
    
    private func circleAnimation() {
        
        let a = Animation.repeatAnimations(count: Repeat.Count(3), animationParam: Animation.moveCircle(frameCircle: CGRectMake(45, 100, 200, 200), delay: 1))
        let a2 = Animation.repeatAnimations(count: Repeat.Count(3), animationParam: Animation.moveCircle(frameCircle: CGRectMake(45, 100, 200, 200), delay: 1.5))
        let a3 = Animation.repeatAnimations(count: Repeat.Count(3), animationParam: Animation.moveCircle(frameCircle: CGRectMake(45, 100, 200, 200), delay: 2))
        let a4 = Animation.repeatAnimations(count: Repeat.Count(3), animationParam: Animation.moveCircle(frameCircle: CGRectMake(45, 100, 200, 200), delay: 2.5))

        view1.layer.runAnimation(animation: a)
        view2.layer.runAnimation(animation: a2)
        view3.layer.runAnimation(animation: a3)
        view4.layer.runAnimation(animation: a4)
    }
    


}
