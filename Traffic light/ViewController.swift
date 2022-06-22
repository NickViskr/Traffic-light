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
    
    private var numberOfClicks = 0
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorSwitchingButton.layer.cornerRadius = 15
        
    }
    override func viewWillLayoutSubviews() {
        redLampView.layer.cornerRadius = redLampView.frame.width / 2
        yellowLampView.layer.cornerRadius = yellowLampView.frame.width / 2
        greenLanpView.layer.cornerRadius = greenLanpView.frame.width / 2
    }
    
    
    
    @IBAction func colorSwitchingButtonTapped() {
        colorSwitchingButton.setTitle("NEXT", for: .normal)
        
        numberOfClicks += 1
        if numberOfClicks % 2 == 0 {
            yellowLampView.alpha = lightIsOn
            greenLanpView.alpha = lightIsOff
            redLampView.alpha = lightIsOff
        } else if numberOfClicks % 3 == 0 {
            greenLanpView.alpha = lightIsOn
            yellowLampView.alpha = lightIsOff
            redLampView.alpha = lightIsOff
            numberOfClicks = 0
        } else {
            redLampView.alpha = lightIsOn
            greenLanpView.alpha = lightIsOff
            yellowLampView.alpha = lightIsOff
            
        }
        
        
    }
    
}

