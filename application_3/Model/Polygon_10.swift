//
//  Polygon_10.swift
//  application_3
//
//  Created by Lizaveta Rudzko on 2/21/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

import UIKit

@IBDesignable class Polygon_10: UIView {
    
    override func draw(_ rect: CGRect) {
        let width = bounds.size.width
        let height = bounds.size.height
        let size = min (width, height)
        
        let rect = CGRect(x: 0.0, y: 0.0, width: size, height: size)
        
        let path = UIBezierPath()
        
        let x = rect.midX
        let y = rect.midY
        let r:CGFloat = 80
        let angle = 2 * CGFloat(Double.pi) / CGFloat(10)
        var points = [CGPoint]()
        for i in 0...10 {
            let x_new = x + r * cos(angle * CGFloat(i))
            let y_new = y + r * sin(angle * CGFloat(i))
            points.append(CGPoint(x: x_new, y: y_new))
        }
        
        let dec = points[0]
        path.move(to: CGPoint(x: dec.x, y: dec.y))
        for i in points {
            path.addLine(to: CGPoint(x: i.x, y: i.y))
        }
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.blue.cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = path.bounds
        gradientLayer.bounds = path.bounds
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.yellow.cgColor]
        let shapeMask = CAShapeLayer()
        shapeMask.path = path.cgPath
        gradientLayer.mask = shapeMask
        
        let shadowLayer = CALayer()
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowOffset = CGSize.zero
        shadowLayer.shadowRadius = 15.0
        shadowLayer.shadowOpacity = 0.8
        shadowLayer.backgroundColor = UIColor.clear.cgColor
        
        shadowLayer.insertSublayer(shapeLayer, at: 0)
        shadowLayer.insertSublayer(gradientLayer, at: 1)
        self.layer.addSublayer(shadowLayer)
    }
}
