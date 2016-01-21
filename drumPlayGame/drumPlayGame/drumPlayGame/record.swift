//
//  record.swift
//  
//
//  Created by rubl333 on 2016/1/21.
//
//

import UIKit

class record: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(score)分"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
