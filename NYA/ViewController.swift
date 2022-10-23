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
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blackView.layer.cornerRadius = 100
        redView.layer.cornerRadius = 100
        yellowView.layer.cornerRadius = 100
        greenView.layer.cornerRadius = 100
        startButton.layer.cornerRadius = 25
        
        redView.isOpaque.toggle()
        
        
    }

    @IBAction func startButtonWasTapped() {
    }
    
}

