//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by NTD on 10/4/19.
//  Copyright © 2019 Nelson Desello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateMagicBall()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        updateMagicBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }
    
    func updateMagicBall() {
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
}

