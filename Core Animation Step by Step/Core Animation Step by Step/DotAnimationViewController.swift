//
//  DotAnimationViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 21/2/23.
//

import UIKit

class DotAnimationViewController: UIViewController {

    let animation = DotsAnimation()

    @IBOutlet weak var bgAnimateView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

       
        dotAnimation()
    }
    
    func dotAnimation() {

//        let viewToAnimate = UIView(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
//        viewToAnimate.backgroundColor = UIColor(white: 1, alpha: 0)
        let animationDots = animation.startDotsAnimation(superView: bgAnimateView, dotsColor: UIColor.white)
        animationDots.frame = bgAnimateView.bounds
        view.addSubview(animationDots)
        
    }
}
