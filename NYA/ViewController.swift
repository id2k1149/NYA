//
//  ViewController.swift
//  NYA
//
//  Created by Max Franz Immelmann on 10/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var blackView: UIView!
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    enum LightIs {
        case red
        case yellow
        case green
    }
    
    var light: LightIs = .red
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blackView.layer.cornerRadius = 80
        redView.layer.cornerRadius = 70
        yellowView.layer.cornerRadius = 70
        greenView.layer.cornerRadius = 70
        
        startButton.layer.cornerRadius = startButton.frame.height / 2
        
    }

    @IBAction func startButtonWasTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch light {
        case .red:
            light = .yellow
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        case .yellow:
            light = .green
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
        case .green:
            light = .red
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        }
        
    }
    
}

