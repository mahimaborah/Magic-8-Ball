//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Mahima Borah on 07/12/17.
//  Copyright © 2017 Mahima Borah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var askMeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let picArray = [ "ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomNo : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionAsked()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        questionAsked()
    }
    
    func questionAsked(){
        
        randomNo = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: picArray[randomNo])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        questionAsked()
    }
    
}

