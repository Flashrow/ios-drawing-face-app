//
//  ChangeSmileViewController.swift
//  PUM_lab
//
//  Created by Student on 30/11/2020.
//  Copyright © 2020 PS. All rights reserved.
//

import UIKit

class ChangeSmileViewController: UIViewController {

    @IBOutlet weak var smileSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let destination = segue.destination as! ViewController
        destination.smileModificator = CGFloat(smileSlider.value)
    }
    
    @IBAction func onSmileSliderChange(_ sender: Any) {
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
