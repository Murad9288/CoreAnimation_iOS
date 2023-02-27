//
//  PulseButtonAnimViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 23/2/23.
//

import UIKit
class PulseButtonAnimViewController: UIViewController {
    
    
    var pulseEffect = ButtonPulseAnimation(layer: CGFloat.self)
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var bgview: UIView!
    @IBOutlet weak var btnOne: PulsatingButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pulsingbuttonAnimation()
        
    }
    
    @IBAction func pressButtonAction(_ sender: Any) {
       
        pulseEffect = ButtonPulseAnimation(repeatCount: Float.infinity, radius: 80, position: button2.center)
        button2.layer.insertSublayer(self.pulseEffect, below: button2.layer)
    }
    private func pulsingbuttonAnimation() {
        button2.layer.cornerRadius = button2.bounds.height/2
        btnOne.center = self.bgview.center
        btnOne.layer.cornerRadius = btnOne.bounds.height/2
        btnOne.pulse()
        
        
//        btnOne.pulseB()
    }
}
