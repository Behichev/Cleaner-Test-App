//
//  BezierCurves.swift
//  Cleaner Test App
//
//  Created by Ivan Behichev on 01.04.2023.
//

import UIKit

@IBDesignable
final class BezierCurves: UIView {
    
    override func draw(_ rect: CGRect) {
        let center: CGPoint = CGPoint(x: self.bounds.width / 2, y: self.bounds.height / 2)
        
        let circle = UIBezierPath()
        circle.addArc(withCenter: CGPoint(x: center.x , y: center.y + 8),
                      radius: 12.0,
                      startAngle: CGFloat(180.0).rounded(),
                      endAngle: CGFloat(0.0).rounded(),
                      clockwise: false)
        circle.close()
        
        let triangle = UIBezierPath()
        triangle.move(to: center)
        triangle.addLine(to: CGPoint(x: center.x - 500 , y: center.y + 130))
        triangle.addLine(to: CGPoint(x: center.x + 500, y: center.y + 130))
        triangle.close()
    
        let circleShapeLayer = CAShapeLayer()
        circleShapeLayer.path = circle.cgPath
        circleShapeLayer.fillColor = UIColor.white.cgColor
        
        let triangleShapeLayer = CAShapeLayer()
        triangleShapeLayer.path = triangle.cgPath
        triangleShapeLayer.fillColor = UIColor(named: "purpleCustom")!.cgColor
        
        self.layer.addSublayer(triangleShapeLayer)
        self.layer.addSublayer(circleShapeLayer)
    }
}
