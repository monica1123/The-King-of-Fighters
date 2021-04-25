//
//  ViewController.swift
//  The King of Fighters
//
//  Created by Monica Lo on 2021/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boy: UIImageView!
    @IBOutlet weak var girl: UIImageView!
    @IBOutlet weak var fire: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var boy2: UIImageView!
    @IBOutlet weak var smallboy2: UIImageView!
    
    var degrees: Float = 0
    
    func updateLocation() {
        
         slider.value = degrees
         boy2.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi / -180 * 2 * CGFloat(degrees)).translatedBy(x: -180, y: 120)
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
    }

    @IBAction func moveSlider(_ sender: UISlider) {
        
        let speed = Int(sender.value * 3)
        boy.frame.origin.x = CGFloat(-5 + speed * 5)
        girl.frame.origin.x = CGFloat(375 - speed * 3)
       
        boy2.alpha = CGFloat(sender.value/10)
        smallboy2.alpha = CGFloat(sender.value/10)
        fire.alpha = CGFloat(sender.value/10)
        
        degrees = sender.value
        updateLocation()
    
    }
    
}

