//
//  tranformViewController.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 10/11/22.
//

import UIKit

class transformViewController: UIViewController {

    @IBOutlet weak var clickButton1: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var touchlabel: UILabel!
   
    
    var currenctAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bordarRadius()
        hiddenAll()
        threeDtransform()
        
        
    }
    
    // MARK: Private Method
    
    
    // MARK: Bordar Radius Function
    
    private func bordarRadius(){
        imageView.layer.cornerRadius = 10
        imageView2.layer.cornerRadius = 10
        view1.layer.cornerRadius = 15
    }
    
    
    // MARK: Hidden view and image function
    
    private func hiddenAll(){
        imageView.isHidden = true
        imageView2.isHidden = true
        view1.isHidden = true
    }
    
    // MARK: 3D Transform
    
    private func threeDtransform(){
        let anim = CABasicAnimation(keyPath: "transform")
        anim.fromValue = CATransform3DMakeRotation(20, 0, 0, 0)
        anim.toValue = CATransform3DMakeRotation(-0.5, 0, 10, 0)
        anim.duration = 1
        anim.autoreverses = true
        anim.repeatCount = 1000
        touchlabel.layer.add(anim, forKey: "transform")
        
    }

    
   // MARK: Click Button Action
    
    @IBAction func clickbutton(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0.1,usingSpringWithDamping: 0.3,initialSpringVelocity: 3, options: [] ,animations: {
            
            self.transformImage()
            
        })
        
    // MARK: Currentanimation pass
        
        currenctAnimation += 1
        if currenctAnimation > 10{
            currenctAnimation = 0
        }
        
    }
    
    // MARK: Transform all image and view
    
    private func transformImage(){
        switch self.currenctAnimation{
            
        case 0:
            imageView.isHidden = false
            imageView2.isHidden = false
            view1.isHidden = false
           touchlabel.isHidden = true
            
            let anim = CABasicAnimation(keyPath: "transform")
            anim.fromValue = CATransform3DMakeRotation(20, 0, 1, 0)
            anim.toValue = CATransform3DMakeRotation(-0.5, 0, 10, 0)
            anim.duration = 5
            anim.autoreverses = true
            anim.repeatCount = 1000
            
            let anim2 = CABasicAnimation(keyPath: "transform")
            anim2.fromValue = CATransform3DMakeRotation(0, 0, 1, 0)
            anim2.toValue = CATransform3DMakeRotation(0.90, 1, 0, 0)
            anim2.duration = 3
            anim2.autoreverses = true
            anim2.repeatCount = 1000
            
            let anim3 = CABasicAnimation(keyPath: "transform")
            anim3.fromValue = CATransform3DMakeRotation(20, 3, 0, 0)
            anim3.toValue = CATransform3DMakeRotation(-0.5, 3, 0, 0)
            anim3.duration = 5
            anim3.autoreverses = true
            anim3.repeatCount = 1000
            
            view1.layer.add(anim, forKey: "transform")
            imageView.layer.add(anim2, forKey: "transform")
            imageView2.layer.add(anim3, forKey: "transform")
            
            
        case 1:
            imageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.7)
            imageView2.transform = CGAffineTransform(translationX: 10, y: -80)
            view1.transform = CGAffineTransform(translationX: 0, y: 20)
            //clickButton1.transform = CGAffineTransform(translationX: 0, y: 40)
            
        case 2:
            
            imageView.transform = .identity
            imageView2.transform = .identity
            //clickButton1.transform = .identity
            view1.transform = .identity
            
        case 3:
            imageView.transform = CGAffineTransform(translationX: -5, y: -250)
            imageView2.transform = CGAffineTransform(translationX: 5, y: 320)
           // clickButton1.transform = CGAffineTransform(translationX: 0, y: 40)
            view1.transform = CGAffineTransform(translationX: 10000, y: 0)


        case 4:
            imageView2.transform = .identity
            imageView.transform = .identity
           // clickButton1.transform = .identity

       case 5:
            imageView2.transform = CGAffineTransform(rotationAngle: .pi)
            imageView.transform = CGAffineTransform(translationX: 0, y: 20)
            
        case 6:
            imageView2.transform = .identity
            imageView.transform = .identity
            
        case 7:
            imageView.transform = CGAffineTransform(translationX: 0, y: -1000)
            imageView2.transform = CGAffineTransform(translationX: 1000, y: 0)
            
            
        case 8:
            imageView2.transform = .identity
            imageView.transform = .identity
            //clickButton1.transform = CGAffineTransform(translationX: 130, y: 0)
            
        
        case 9:
            //clickButton1.transform = .identity
            imageView.alpha = 0.1
            imageView2.alpha = 0.1
            imageView.backgroundColor = .green
            imageView2.backgroundColor = .black
            
        case 10:
            imageView.alpha = 1
            imageView2.alpha = 1
            imageView.backgroundColor = .clear
            imageView2.backgroundColor = .clear
            
        default:
            break
            
            
        }
    }
    
}
