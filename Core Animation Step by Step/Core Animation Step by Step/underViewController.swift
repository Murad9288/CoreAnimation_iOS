//
//  underViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 9/11/22.
//

import UIKit

class underViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view9: UIView!
    @IBOutlet weak var view10: UIView!
    @IBOutlet weak var view11: UIView!
    @IBOutlet weak var view12: UIView!
    @IBOutlet weak var view13: UIView!
    @IBOutlet weak var view14: UIView!
    @IBOutlet weak var view15: UIView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        allViewCircle()
        
        view.transform = CGAffineTransform(scaleX: 0, y: 0)

    }
    
    private func allViewCircle(){
        view1.layer.cornerRadius = view1.layer.bounds.width / 2.1
        view2.layer.cornerRadius = view2.layer.bounds.width / 2.1
        view3.layer.cornerRadius = view3.layer.bounds.width / 2.1
        view4.layer.cornerRadius = view4.layer.bounds.width / 2.1
        view5.layer.cornerRadius = view5.layer.bounds.width / 2.1
        view6.layer.cornerRadius = view6.layer.bounds.width / 2.1
        view7.layer.cornerRadius = view7.layer.bounds.width / 2.1
        view8.layer.cornerRadius = view8.layer.bounds.width / 2.1
        view9.layer.cornerRadius = view9.layer.bounds.width / 2.1
        view10.layer.cornerRadius = view10.layer.bounds.width / 2.1
        view11.layer.cornerRadius = view11.layer.bounds.width / 2.1
        view12.layer.cornerRadius = view12.layer.bounds.width / 2.1
        view13.layer.cornerRadius = view13.layer.bounds.width / 2.1
        view14.layer.cornerRadius = view14.layer.bounds.width / 2.1
        view15.layer.cornerRadius = view15.layer.bounds.width / 2.1
        
        
        
        let animation = CABasicAnimation()
        animation.keyPath = "position.y"
        animation.fromValue = 4000
        animation.toValue  = 400
        animation.duration = 0.70
        
        view.layer.add(animation, forKey: "basic")
        
    }
    // MARK: Transform image view loded state
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 0.1) {
            self.view.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
    }
    
}
