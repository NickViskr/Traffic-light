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
        //redLampView.isHidden = true
        redLampView.layer.cornerRadius = 64
        yellowLampView.layer.cornerRadius = 64
        greenLanpView.layer.cornerRadius = 64
        colorSwitchingButton.layer.cornerRadius = 10
        
    }


}

