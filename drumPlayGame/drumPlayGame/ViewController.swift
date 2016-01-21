//
//  ViewController.swift
//  drumPlayGame
//
//  Created by rubl333 on 2016/1/21.
//  Copyright (c) 2016年 appcoda. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var number : Int = 0
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var blueView: UIButton!
    @IBOutlet weak var blue2View: UIButton!
    @IBOutlet weak var blue3View: UIButton!
    @IBOutlet weak var blue4View: UIButton!
    @IBOutlet weak var blue5View: UIButton!
    @IBOutlet weak var yellowView: UIButton!
    @IBOutlet weak var yellow2View: UIButton!
    @IBOutlet weak var pinkView: UIButton!
    
    
    var backgroundQueue = NSOperationQueue()
    
    func updateScoreLabel()
    {
        //        self.score.text = "Score: \(self.number)"
    }
    
    
    @IBAction func blueView(sender: AnyObject) {
        blueView.backgroundColor = UIColor.redColor()
        number = number + 50
        
        updateScoreLabel()
        
        blueView.hidden = true
        //           var timer_bb = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("b_disappear"), userInfo:nil,repeats:false)
        
    }
    @IBAction func blue2View(sender: AnyObject) {
        blue2View.backgroundColor = UIColor.redColor()
        number = number + 50
        
        updateScoreLabel()
        blue2View.hidden = true
        //        var timer_bb2 = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("b2_disappear"),
        //            userInfo:nil,repeats:false)
    }
    @IBAction func blue3View(sender: AnyObject) {
        blue3View.backgroundColor = UIColor.redColor()
        number = number + 50
        
        updateScoreLabel()
        blue3View.hidden = true
        //        var timer_bb3 = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("b3_disappear"),
        //            userInfo:nil,repeats:false)
    }
    @IBAction func blue4View(sender: AnyObject) {
        blue4View.backgroundColor = UIColor.redColor()
        number = number + 50
        
        updateScoreLabel()
        blue4View.hidden = true
        //        var timer_bb4 = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("b4_disappear"),
        //            userInfo:nil,repeats:false)
    }
    @IBAction func blue5View(sender: AnyObject) {
        blue5View.backgroundColor = UIColor.redColor()
        number = number + 50
        
        updateScoreLabel()
        blue5View.hidden = true
        //        var timer_bb5 = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("b5_disappear"),
        //            userInfo:nil,repeats:false)
    }
    @IBAction func yellowView(sender: AnyObject) {
        yellowView.backgroundColor = UIColor.redColor()
        number = number + 70
        
        updateScoreLabel()
        yellowView.hidden = true
        //        var timer_yy = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("t_disappear"),
        //            userInfo:nil,repeats:false)
    }
    @IBAction func yellow2View(sender: AnyObject) {
        yellow2View.backgroundColor = UIColor.redColor()
        number = number + 150
        
        updateScoreLabel()
        yellow2View.hidden = true
        //        var timer_yy2 = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("t2_disappear"),
        //            userInfo:nil,repeats:false)
        alert_grade()
    }
    @IBAction func pinkView(sender: AnyObject) {
        pinkView.backgroundColor = UIColor.redColor()
        number = number + 70
        
        updateScoreLabel()
        pinkView.hidden = true
        //        var timer_pp = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("k_disappear"),
        //            userInfo:nil,repeats:false)
    }
    
    
    
    
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score.text = "Score: \(number)"
        blueView.hidden = true
        blue2View.hidden = true
        blue3View.hidden = true
        blue4View.hidden = true
        blue5View.hidden = true
        
        yellowView.hidden = true
        yellow2View.hidden = true
        pinkView.hidden = true
        
        
        var timer5 = NSTimer.scheduledTimerWithTimeInterval(1,target:self,selector:Selector("blue_up"),
            userInfo:nil,repeats:false)
        var timer6 = NSTimer.scheduledTimerWithTimeInterval(2,target:self,selector:Selector("blue2_up"),
            userInfo:nil,repeats:false)
        var timer7 = NSTimer.scheduledTimerWithTimeInterval(3,target:self,selector:Selector("blue3_up"),
            userInfo:nil,repeats:false)
        var timer8 = NSTimer.scheduledTimerWithTimeInterval(4,target:self,selector:Selector("blue4_up"),
            userInfo:nil,repeats:false)
        var timer9 = NSTimer.scheduledTimerWithTimeInterval(5,target:self,selector:Selector("blue5_up"),
            userInfo:nil,repeats:false)
        var timer10 = NSTimer.scheduledTimerWithTimeInterval(6,target:self,selector:Selector("yellow_up"),
            userInfo:nil,repeats:false)
        var timer11 = NSTimer.scheduledTimerWithTimeInterval(7,target:self,selector:Selector("pink_up"),
            userInfo:nil,repeats:false)
        var timer12 = NSTimer.scheduledTimerWithTimeInterval(8,target:self,selector:Selector("yellow2_up"),
            userInfo:nil,repeats:false)
        
        var timer_score = NSTimer.scheduledTimerWithTimeInterval(13,target:self,selector:Selector("alert_grade"),
            userInfo:nil,repeats:false)
        
    }
    
    
    //different view show up
    func blue_up(){
        blueView.hidden = false
        var timer_b = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("blue_next"),
            userInfo:nil,repeats:true)
    }
    
    func blue2_up(){
        blue2View.hidden = false
        var timer_b2 = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("blue2_next"),
            userInfo:nil,repeats:true)
        
    }
    func blue3_up(){
        blue3View.hidden = false
        var timer_b3 = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("blue3_next"),
            userInfo:nil,repeats:true)
        
    }
    func blue4_up(){
        blue4View.hidden = false
        var timer_b4 = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("blue4_next"),
            userInfo:nil,repeats:true)
        
    }
    func blue5_up(){
        blue5View.hidden = false
        var timer_b5 = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("blue5_next"),
            userInfo:nil,repeats:true)
        
    }
    
    func yellow_up(){
        yellowView.hidden = false
        var timer_y = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("yellow_next"),
            userInfo:nil,repeats:true)
        
    }
    
    func yellow2_up(){
        yellow2View.hidden = false
        var timer_y2 = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("yellow2_next"),
            userInfo:nil,repeats:true)
        
    }
    
    func pink_up(){
        pinkView.hidden = false
        var timer_p = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("pink_next"),
            userInfo:nil,repeats:true)
        
    }
    
    var x:Int = 0
    func blue_next(){
        
        self.x = 2
        var yyy:Int = Int(blueView.frame.minY)
        
        yyy = yyy - x
        
        blueView.frame = CGRectMake(0, CGFloat(yyy), 143, 95)
    }
    
    func blue2_next(){
        
        self.x = 2
        var yyy:Int = Int(blue2View.frame.minY)
        
        yyy = yyy - x
        
        blue2View.frame = CGRectMake(0, CGFloat(yyy), 143, 95)
    }
    
    func blue3_next(){
        
        self.x = 2
        var yyy:Int = Int(blue3View.frame.minY)
        
        yyy = yyy - x
        
        blue3View.frame = CGRectMake(0, CGFloat(yyy), 143, 95)
    }
    
    func blue4_next(){
        
        self.x = 2
        var yyy:Int = Int(blue4View.frame.minY)
        
        yyy = yyy - x
        
        blue4View.frame = CGRectMake(0, CGFloat(yyy), 143, 95)
    }
    func blue5_next(){
        
        self.x = 2
        var yyy:Int = Int(blue5View.frame.minY)
        
        yyy = yyy - x
        
        blue5View.frame = CGRectMake(0, CGFloat(yyy), 143, 95)
    }
    
    var x2:Int = 0
    func yellow_next(){
        
        self.x2 = 2
        var yyy:Int = Int(yellowView.frame.minY)
        
        yyy = yyy - x2
        
        yellowView.frame = CGRectMake(0, CGFloat(yyy), 143, 95)
    }
    
    func yellow2_next(){
        
        self.x2 = 2
        var yyy:Int = Int(yellow2View.frame.minY)
        
        yyy = yyy - x2
        
        yellow2View.frame = CGRectMake(0, CGFloat(yyy), 143, 95)
    }
    
    var x3:Int = 0
    func pink_next(){
        
        self.x3 = 2
        var yyy:Int = Int(pinkView.frame.minY)
        
        yyy = yyy - x3
        
        pinkView.frame = CGRectMake(0, CGFloat(yyy), 143, 95)
    }
    
    //    //view disappear
    //    func b_disappear(){
    //        blueView.hidden = true
    //    }
    //    func b2_disappear(){
    //        blue2View.hidden = true
    //    }
    //    func b3_disappear(){
    //        blue3View.hidden = true
    //    }
    //    func b4_disappear(){
    //        blue4View.hidden = true
    //    }
    //    func b5_disappear(){
    //        blue5View.hidden = true
    //    }
    //    func t_disappear(){
    //        yellowView.hidden = true
    //    }
    //    func t2_disappear(){
    //        yellow2View.hidden = true
    //    }
    //    func k_disappear(){
    //        pinkView.hidden = true
    //    }
    
    func alert_grade(){
    var alert = UIAlertController(title: "完成", message: "恭喜得到\(number)分", preferredStyle: UIAlertControllerStyle.Alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:
    {(alert: UIAlertAction!) in self.performSegueWithIdentifier("to_record", sender: AnyObject?())}
    ))
    self.presentViewController(alert, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "to_record"{
            let v = segue.destinationViewController as! record
            v.score = self.number
        }
    }
    
}


