//
//  ViewController.swift
//  theOne
//
//  Created by Shun-Ching, Chou on 2018/10/18.
//  Copyright © 2018 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var adoptSwitch: UISwitch!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var dogImage: UIImageView!
    @IBOutlet weak var ans: UILabel!
    
    @IBAction func imageClick(_ sender: UIButton) {
        // 點選照片回復預設值
        nameTextField.text = ""
        genderSegmentedControl.selectedSegmentIndex = 0
        adoptSwitch.isOn = true
        ageSlider.value = 10
        ageLabel.text = "10"
        dogImage.image = UIImage(named: "合照.jpg")
        ans.isHidden = true
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        //當slider改變時，更改label的值
        ageLabel.text = "\(Int(ageSlider.value))"
    }
    
    @IBAction func sendButton(_ sender: UIButton) {
        if (nameTextField.text == "blackbeauty" &&
            genderSegmentedControl.selectedSegmentIndex == 1 &&
            adoptSwitch.isOn == false &&
            Int(ageSlider.value) == 3) {
            dogImage.image = UIImage(named: "咪.jpg")
            ans.text = "O"
            ans.isHidden = false
        } else {
            dogImage.image = UIImage(named: "江.jpg")
            ans.text = "X"
            ans.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

