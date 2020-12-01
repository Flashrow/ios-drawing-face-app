//
//  ViewController.swift
//
//  Created by Lab PUM on 30.09.2018.
//  Copyright © 2018 MM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var face: FaceView!
    
    private var red: CGFloat = 0.5
    private var green: CGFloat = 0.5
    private var blue: CGFloat = 0.5
    
    var smileModificator: CGFloat = 0.0
    
    override func viewDidLoad() {
//        face.red = self.red
//        face.blue = self.blue
//        face.green = self.green
//
//        face.smileCurvatureModificator = smileModificator
        super.viewDidLoad()
        //face.setNeedsDisplay()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func setColor(red: CGFloat, green: CGFloat, blue: CGFloat){
        self.red = red
        self.blue = blue
        self.green = green
    }
    
    @IBAction func exit(_ segue: UIStoryboardSegue){
        let source = segue.source as! ChangeSmileViewController
        self.smileModificator = CGFloat(source.smileSlider.value)
        face.smileCurvatureModificator = smileModificator
        face.setNeedsDisplay()
    }
    
    @IBAction func exit2(_ segue: UIStoryboardSegue){
        let source = segue.source as! ChangeColorViewController
        self.red = CGFloat(source.sliderRed.value)
        self.green = CGFloat(source.sliderGreen.value)
        self.blue = CGFloat(source.sliderBlue.value)
        face.red = self.red
        face.blue = self.blue
        face.green = self.green
        face.setNeedsDisplay()
    }

}

