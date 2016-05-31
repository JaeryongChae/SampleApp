//
//  ViewController.swift
//  SampleApp
//
//  Created by MF839-008 on 2016. 5. 31..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLable: UILabel! //암묵적 Optional
    
    @IBAction func openSecondView(sender: AnyObject) {
        myLable.text = "Test"
        
        // 화면전환을 위해 segue 연결
        performSegueWithIdentifier("thirdsegue", sender: self)
    }
    
    @IBAction func openLoginView(sender: AnyObject) {
        // strotyboard에서 Identifier를 이용하여 가져와서 Instance로 만든다.
        if let loginView = self.storyboard?.instantiateViewControllerWithIdentifier("loginview") {
            
            loginView.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
            self.presentViewController(loginView, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() { // override : UIViewController내의 func를 override
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

