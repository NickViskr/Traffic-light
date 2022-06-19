//
//  ViewController.swift
//  Traffic light
//
//  Created by Николай Выскребенцев on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLampView: UIView!
    @IBOutlet var yellowLampView: UIView!
    @IBOutlet var greenLanpView: UIView!
    @IBOutlet var colorSwitchingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLampView.layer.cornerRadius = 71
        yellowLampView.layer.cornerRadius = 71
        greenLanpView.layer.cornerRadius = 71
        colorSwitchingButton.layer.cornerRadius = 15
        
    }
    var numberOfClicks = 0
    
    @IBAction func colorSwitchingButtonTapped() {
        colorSwitchingButton.setTitle("NEXT", for: .normal)
        
        numberOfClicks += 1
        if numberOfClicks % 2 == 0 {
            yellowLampView.alpha = 1
            greenLanpView.alpha = 0.2
            redLampView.alpha = 0.2
        } else if numberOfClicks % 3 == 0 {
            greenLanpView.alpha = 1
            yellowLampView.alpha = 0.2
            redLampView.alpha = 0.2
            numberOfClicks = 0
        } else {
            redLampView.alpha = 1
            greenLanpView.alpha = 0.2
            yellowLampView.alpha = 0.2
            
        }
        
        
    }
    
}

