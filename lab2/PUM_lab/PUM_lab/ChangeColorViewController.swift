//
//  ChangeColorViewController.swift
//  PUM_lab
//
//  Created by Student on 30/11/2020.
//  Copyright © 2020 PS. All rights reserved.
//

import UIKit

class ChangeColorViewController: UIViewController {

    private var red: CGFloat = 0.5
    private var green: CGFloat = 0.5
    private var blue: CGFloat = 0.5
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onRedSliderChange(_ sender: Any) {
        red = CGFloat(sliderRed.value)
    }

    @IBAction func onGreenSliderChange(_ sender: Any) {
        green = CGFloat(sliderGreen.value)
    }
    
    @IBAction func onBlueSliderChange(_ sender: Any) {
        blue = CGFloat(sliderBlue.value)
    }
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
