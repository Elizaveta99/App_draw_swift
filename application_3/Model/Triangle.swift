//
//  Triangle.swift
//  application_3
//
//  Created by Lizaveta Rudzko on 2/21/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

import UIKit

@IBDesignable class Triangle: UIView {
    
    override func draw(_ rect: CGRect) {
        
        //rectangle
        let width = bounds.size.width/3.0 - 40.0
        let height = bounds.size.height - 40.0
        let size = max (min (width, height), 150.0)
        let rect = CGRect(x: 50.0, y: bounds.minY, width: size, height: size)
        
        let path = UIBezierPath()
        let center = CGPoint(x:rect.midX, y: rect.midY - 55.0)
        
        path.move(to: center)
        path.addLine(to: CGPoint(x:rect.midX + 110, y: rect.midY - 55.0))
        path.addLine(to: CGPoint(x:rect.midX + 35, y: rect.midY - 55.0 + sqrt(1600.0-35*35)))
        path.close()
        
        let shadowLayer = CALayer()
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowOffset = CGSize.zero
        shadowLayer.shadowRadius = 10.0
        shadowLayer.shadowOpacity = 0.8
        shadowLayer.backgroundColor = UIColor.clear.cgColor
        
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.strokeColor = UIColor.green.cgColor
        shape.fillColor = UIColor.yellow.cgColor
        
        shadowLayer.insertSublayer(shape, at: 0)
        self.layer.addSublayer(shadowLayer)
    }
}
