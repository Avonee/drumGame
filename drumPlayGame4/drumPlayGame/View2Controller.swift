//
//  View2Controller.swift
//  
//
//  Created by rubl333 on 2016/1/23.
//
//

import UIKit
import AVFoundation
import AudioToolbox


class View2Controller: UIViewController {
    
    let mp3URL = NSBundle.mainBundle().URLForResource("Jay-Chou-Tornado.mp3", withExtension: "mp3")!
    var player:AVAudioPlayer?
    
    
    @IBOutlet weak var yesLabel: UILabel!
    
    var number : Int = 0
    @IBOutlet weak var score: UILabel!
    
    
    
    @IBOutlet weak var yellowView: UIButton!
    @IBOutlet weak var yellow2View: UIButton!
    @IBOutlet weak var yellow3View: UIButton!
    @IBOutlet weak var yellow4View: UIButton!
    @IBOutlet weak var pinkView: UIButton!
    
    
    
    var backgroundQueue = NSOperationQueue()
    
    func updateScoreLabel()
    {
        //        self.score.text = "Score: \(self.number)"
    }
    
    
    
    
    @IBAction func yellowView(sender: AnyObject) {
        
        number = number + 70
        
        updateScoreLabel()
        yellowView.hidden = true
        
        yesLabel.text = "YES ! ! !"
        yesLabel.textColor = UIColor.orangeColor()
        var timer1_showup = NSTimer.scheduledTimerWithTimeInterval(1,target:self,selector:Selector("show1_up"),
            userInfo:nil,repeats:false)
        
        //        yellowView.frame = CGRectMake(0, 562, 320, 159)
        //        yellow_next()
        
    }
    @IBAction func yellow2View(sender: AnyObject) {
        
        number = number + 70
        
        updateScoreLabel()
        yellow2View.hidden = true
        
        yesLabel.text = "YES ! ! !"
        yesLabel.textColor = UIColor.whiteColor()
        var timer2_showup = NSTimer.scheduledTimerWithTimeInterval(1,target:self,selector:Selector("show2_up"),
            userInfo:nil,repeats:false)
        //        yellow2View.frame = CGRectMake(0, 562, 320, 159)
        //        yellow2_next()
        
    }
    @IBAction func yellow3View(sender: AnyObject) {
        
        number = number + 70
        
        updateScoreLabel()
        yellow3View.hidden = true
        
        yesLabel.text = "YES ! ! !"
        yesLabel.textColor = UIColor.greenColor()
        var timer3_showup = NSTimer.scheduledTimerWithTimeInterval(1,target:self,selector:Selector("show3_up"),
            userInfo:nil,repeats:false)
        //        yellow2View.frame = CGRectMake(0, 562, 320, 159)
        //        yellow2_next()
        
    }
    @IBAction func yellow4View(sender: AnyObject) {
        
        number = number + 70
        
        updateScoreLabel()
        yellow4View.hidden = true
        
        yesLabel.text = "YES ! ! !"
        yesLabel.textColor = UIColor.redColor()
        var timer4_showup = NSTimer.scheduledTimerWithTimeInterval(1,target:self,selector:Selector("show4_up"),
            userInfo:nil,repeats:false)
        //        yellow2View.frame = CGRectMake(0, 562, 320, 159)
        //        yellow2_next()
        
    }
    
    @IBAction func pinkView(sender: AnyObject) {
        
        number = number + 150
        
        updateScoreLabel()
        pinkView.hidden = true
        
        yesLabel.text = "YES ! ! !"
        yesLabel.textColor = UIColor.yellowColor()
        
    }
    
    
    
    
    func yes_disappear(){
        yesLabel.text = ""
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = AVAudioPlayer(contentsOfURL: mp3URL, error: nil)
        player?.play()
        
        
        yesLabel.text = ""
        score.text = "Score: \(number)"
        
        
        yellowView.hidden = true
        yellow2View.hidden = true
        yellow3View.hidden = true
        yellow4View.hidden = true
        pinkView.hidden = true
        
        
        
        
        
        
        yellow_up()
        
        
        //        var timer1 = NSTimer.scheduledTimerWithTimeInterval(0.01,target:self,selector:Selector("yellow_up"),
        //            userInfo:nil,repeats:false)
        
        var timer2 = NSTimer.scheduledTimerWithTimeInterval(57,target:self,selector:Selector("pink_up"),
            userInfo:nil,repeats:false)
        
        
        
        
        
        var timer_score = NSTimer.scheduledTimerWithTimeInterval(63.5,target:self,selector:Selector("alert_grade"),
            userInfo:nil,repeats:false)
        
        
        
    }
    
    
    //different view show up
    
    
    
    func yellow_up(){
        // yellowView.hidden = false
        var timer_y = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("yellow_next"),
            userInfo:nil,repeats:true)
        
    }
    
    func pink_up(){
        pinkView.hidden = false
        var timer_p = NSTimer.scheduledTimerWithTimeInterval(0.01 ,target:self,selector:Selector("pink_next"),
            userInfo:nil,repeats:true)
        
    }
    
    
    
    var x:Int = 0
    var x2:Int = 0
    var x3:Int = 0
    var x4:Int = 0
    func yellow_next(){
        
        
        
        self.x4 = 2
        var yyy4:Int = Int(yellow4View.frame.minY)
        
        yyy4 = yyy4 - x4
        
        yellow4View.frame = CGRectMake(0, CGFloat(yyy4), 320, 159)
        //
        self.x3 = 2
        var yyy3:Int = Int(yellow3View.frame.minY)
        
        yyy3 = yyy3 - x3
        
        yellow3View.frame = CGRectMake(0, CGFloat(yyy3), 320, 159)
        //
        self.x2 = 2
        var yyy2:Int = Int(yellow2View.frame.minY)
        
        yyy2 = yyy2 - x2
        
        yellow2View.frame = CGRectMake(0, CGFloat(yyy2), 320, 159)
        
        //
        
        self.x = 2
        var yyy:Int = Int(yellowView.frame.minY)
        
        yyy = yyy - x
        
        yellowView.frame = CGRectMake(0, CGFloat(yyy), 320, 159)
        
        if (yyy == -160){
            yellowView.frame = CGRectMake(0, 562, 320, 159)
            yellowView.hidden = false
            //yellow_next()
            var timer_y_again = NSTimer.scheduledTimerWithTimeInterval(1 ,target:self,selector:Selector("yellow_next"),
                userInfo:nil,repeats:true)
            //            if stopFuncs{
            //                stopFuncs = true
            //                timer_y_again.invalidate()
            //                yellow_disappear()
            //            }
        }else if (yyy == 300){
            yellow2View.frame = CGRectMake(0, 562, 320, 159)
            yellow2View.hidden = false
            var timer_y2_again = NSTimer.scheduledTimerWithTimeInterval(1 ,target:self,selector:Selector("yellow_next"),
                userInfo:nil,repeats:true)
            //            if stopFuncs{
            //                stopFuncs = true
            //                timer_y2_again.invalidate()
            //                yellow_disappear()
            //            }
        }else if (yyy == 138){
            yellow3View.frame = CGRectMake(0, 562, 320, 159)
            yellow3View.hidden = false
            var timer_y3_again = NSTimer.scheduledTimerWithTimeInterval(1 ,target:self,selector:Selector("yellow_next"),
                userInfo:nil,repeats:true)
            //            if stopFuncs{
            //                stopFuncs = true
            //                timer_y3_again.invalidate()
            //                yellow_disappear()
            //            }
            
        }else if (yyy == 126){
            yellow4View.frame = CGRectMake(0, 562, 320, 159)
            yellow4View.hidden = false
            var timer_y4_again = NSTimer.scheduledTimerWithTimeInterval(1 ,target:self,selector:Selector("yellow_next"),
                userInfo:nil,repeats:true)
            
            //            if stopFuncs{
            //                stopFuncs = true
            //                timer_y4_again.invalidate()
            //                yellow_disappear()
            //            }
            
        }
        
        
    }
    
    // var stopFuncs = false
    
    var x5:Int = 0
    func pink_next(){
        //  yellow_disappear()
        //  stopFuncs = true
        self.x5 = 2
        var yyy5:Int = Int(pinkView.frame.minY)
        
        yyy5 = yyy5 - x5
        
        pinkView.frame = CGRectMake(0, CGFloat(yyy5), 320, 159)
    }
    
    func yellow_disappear(){
        yellowView.hidden = true
        yellow2View.hidden = true
        yellow3View.hidden = true
        yellow4View.hidden = true
    }
    func show1_up(){
        yellowView.hidden = false
        
    }
    func show2_up(){
        
        yellow2View.hidden = false
        
    }
    func show3_up(){
        
        yellow3View.hidden = false
        
    }
    func show4_up(){
        
        yellow4View.hidden = false
    }
    
    
    func alert_grade(){
        var alert = UIAlertController(title: "完成", message: "恭喜得到\(number)分", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:
            {(alert: UIAlertAction!) in self.performSegueWithIdentifier("to_record2", sender: AnyObject?())}
            ))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "to_record2"{
            let v = segue.destinationViewController as! record
            v.score = self.number
        }
    }
    
}
