//
//  ViewController.swift
//  Counter
//
//  Created by Nikhil Saini on 10/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var timer:Timer = Timer()
    var i:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startTapped(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func stopTapped(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        
        i = 0
        counterLabel.text = String(i)
        
    }
    
    @objc func counter() {
        i = i + 1
        counterLabel.text = String(i)
    }

}

