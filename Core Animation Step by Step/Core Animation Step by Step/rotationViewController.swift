//
//  rotationViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 10/11/22.
//

import UIKit

class rotationViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewSetup()
        viewEffects()

        
    }
    
    private func imageViewSetup(){
        
        self.myImageView.layer.runAnimation(animation: Animation.rotationY(rotation: Float(Double.pi) * 4, delay: 2), blockCompletion: { () -> () in
            self.myImageView.layer.runAnimation(animation: Animation.bounce(value: 60, delay: 0.1))
        })
        
        
    }
    
    private func viewEffects(){
        
        // MARK: View shadow Effects
        
        // Creating rounder corners
        myImageView.layer.cornerRadius = 10

        // Adding shadow effects
        myImageView.layer.shadowOffset = CGSizeMake(5,5)
        myImageView.layer.shadowOpacity = 1
        myImageView.layer.shadowRadius = 3
        myImageView.layer.shadowColor = UIColor(red: 20/225, green: 20/225, blue: 10/255, alpha: 0.7).cgColor
        
        // Applying borders
        myImageView.layer.borderColor = UIColor(red: 40/225, green: 10/225, blue: 20/255, alpha: 0.1).cgColor

        myImageView.layer.borderWidth = 3

    }

    

}
