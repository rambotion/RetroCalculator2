//
//  ViewController.swift
//  RetroCalculator2
//
//  Created by rambo on 2/14/16.
//  Copyright © 2016 rambo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    var runningNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
		do {
			try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
			btnSound.prepareToPlay()
		} catch let err as NSError {
		print(err.debugDescription)
		}
    }
    @IBAction func numberPressed(btn: UIButton) {
        btnSound.play()
    }
    @IBAction func onDividePressed(sender: AnyObject) {
    }
}

