//
//  FaceView.swift
//
//  Created by Lab PUM on 30.09.2018.
//  Copyright © 2018 MM. All rights reserved.
//

import UIKit

class FaceView: UIView {
    
    var red: CGFloat = 0.12
    var green: CGFloat = 0.64
    var blue: CGFloat = 1.0
    
    var smileCurvatureModificator: CGFloat = 90.0
    
    private var midPoint=CGPoint()

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        let bounds:CGRect = self.bounds
        // center of our bounds in our coordinate system
        self.midPoint.x = bounds.origin.x + bounds.size.width/2
        self.midPoint.y = bounds.origin.y + bounds.size.height/2
        
        var point1=CGPoint()
        point1.x = midPoint.x
        point1.y = midPoint.y
        
        
        let pathHead:UIBezierPath=UIBezierPath()
        pathHead.addArc(withCenter: point1, radius: 110, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        pathHead.lineWidth=10
        let headColor = UIColor(red: self.red,green: self.green,blue: self.blue, alpha: CGFloat(1.0))
        headColor.setFill()
        pathHead.stroke()
        pathHead.fill()

        // eye 1
        var pointEyeLeft = CGPoint()
        pointEyeLeft.x = midPoint.x - 38
        pointEyeLeft.y = midPoint.y - 20
        
        let pathEye1:UIBezierPath=UIBezierPath()
        pathEye1.addArc(withCenter: pointEyeLeft, radius: 12, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        UIColor.white.setFill()
        pathEye1.lineWidth=10
        pathEye1.stroke()
        pathEye1.fill()
        
        // eye 2
        var pointEyeRight = CGPoint()
        pointEyeRight.x = midPoint.x + 38
        pointEyeRight.y = midPoint.y - 20
        
        let pathEye2:UIBezierPath=UIBezierPath()
        pathEye2.addArc(withCenter: pointEyeRight, radius: 12, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        UIColor.white.setFill()
        pathEye2.lineWidth=10
        pathEye2.stroke()
        pathEye2.fill()

        // drawing smile
        let pathSmile:UIBezierPath = UIBezierPath()
        
        var pointSmile1 = CGPoint()
        pointSmile1.x = midPoint.x - 50
        pointSmile1.y = midPoint.y + 50
        
        var pointSmile2 = CGPoint()
        pointSmile2.x = midPoint.x + 50
        pointSmile2.y = midPoint.y + 50
        
        var pointSmileControl = midPoint
        pointSmileControl.y += smileCurvatureModificator
        
        pathSmile.move(to: pointSmile1)
        pathSmile.addQuadCurve(to: pointSmile2, controlPoint: pointSmileControl)
        pathSmile.lineWidth = 5
        pathSmile.stroke()
  
    }
    
    
}
