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
        
        //rectangle
        let width = bounds.size.width/3.0 - 40.0
        let height = bounds.size.height - 40.0
        let size = max (min (width, height), 150.0)
        let rect = CGRect(x: 40.0, y: bounds.midY - 300, width: size, height: size)
        
        //let rect = getRectangle()
        let path = UIBezierPath()
        
        let x = rect.midX
        let y = rect.midY + 230 // ??
        let r:CGFloat = 80 //??
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
        
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.strokeColor = UIColor.blue.cgColor
        
        let gradient = CAGradientLayer()
        gradient.frame = path.bounds
        gradient.bounds = path.bounds
        gradient.colors = [UIColor.green.cgColor, UIColor.yellow.cgColor]
        let shapeMask = CAShapeLayer()
        shapeMask.path = path.cgPath
        gradient.mask = shapeMask
        
        let shadowLayer = CALayer()
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowOffset = CGSize.zero
        shadowLayer.shadowRadius = 10.0
        shadowLayer.shadowOpacity = 0.8
        shadowLayer.backgroundColor = UIColor.clear.cgColor
        
        shadowLayer.insertSublayer(shape, at: 0)
        shadowLayer.insertSublayer(gradient, at: 1)
        self.layer.addSublayer(shadowLayer)
    }
}
