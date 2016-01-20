//
//  ViewController.swift
//  startTest
//
//  Created by Leo Chou on 2016/1/20.
//  Copyright © 2016年 LeoChou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // first set up an object to animate
        // we'll use a familiar red square
//        let square = UIView()
//        square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
//        square.backgroundColor = UIColor.redColor()
//        // add the square to the screen
//        self.view.addSubview(square)
        
                // create and add blue-fish.png image to screen
                let fish = UIImageView()
                fish.image = UIImage(named: "fish.png")
                fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
                self.view.addSubview(fish)
        
        // now create a bezier path that defines our curve
        // the animation function needs the curve defined as a CGPath
        // but these are more difficult to work with, so instead
        // we'll create a UIBezierPath, and then create a
        // CGPath from the bezier when we need it
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 16,y: 239))
        path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
        // create a new CAKeyframeAnimation that animates the objects position
        let anim = CAKeyframeAnimation(keyPath: "position")
        // set the animations path to our bezier curve
        anim.path = path.CGPath
        // set some more parameters for the animation
        // this rotation mode means that our object will rotate so that it's parallel to whatever point it is currently on the curve
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = 5.0
        // we add the animation to the squares 'layer' property
        fish.layer.addAnimation(anim, forKey: "animate position along path")
        
        // loop from 0 to 5
        for i in 0...5 {
            
            
            // create and add blue-fish.png image to screen
            let fish = UIImageView()
            fish.image = UIImage(named: "fish.png")
            fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
            self.view.addSubview(fish)
            
            // create a square
//            let square = UIView()
//            square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
//            square.backgroundColor = UIColor.redColor()
//            self.view.addSubview(square)
            
            // randomly create a value between 0.0 and 150.0
            let randomYOffset = CGFloat( arc4random_uniform(150))
            
            // for every y-value on the bezier curve
            // add our random y offset so that each individual animation
            // will appear at a different y-position
            let path = UIBezierPath()
            path.moveToPoint(CGPoint(x: 16,y: 239 + randomYOffset))
            path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYOffset))
            
            // create the animation
            let anim = CAKeyframeAnimation(keyPath: "position")
            anim.path = path.CGPath
            anim.rotationMode = kCAAnimationRotateAuto
            anim.repeatCount = Float.infinity
           // anim.duration = 5.0
            // each square will take between 4.0 and 8.0 seconds
            // to complete one animation loop
            anim.duration = Double(arc4random_uniform(40)+30) / 10
            
            // stagger each animation by a random value
            // `290` was chosen simply by experimentation
            anim.timeOffset = Double(arc4random_uniform(290))
            
            // add the animation 
            fish.layer.addAnimation(anim, forKey: "animate position along path")
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

