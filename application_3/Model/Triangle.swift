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
        
        let width = bounds.size.width
        let height = bounds.size.height
        let size = min (width, height)
        
        let rect = CGRect(x: 0.0, y: 0.0, width: size, height: size)
        
        let path = UIBezierPath()
        let center = CGPoint(x:rect.midX - 70.0, y: rect.midY - 70.0)
        
        path.move(to: center)
        path.addLine(to: CGPoint(x:rect.midX + 130.0, y: rect.midY - 100.0))
        path.addLine(to: CGPoint(x:rect.midX + 35.0, y: rect.midY - 55.0 + sqrt(1600.0-35.0*35.0)))
        path.close()
        
        let shadowLayer = CALayer()
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowOffset = CGSize.zero
        shadowLayer.shadowRadius = 15.0
        shadowLayer.shadowOpacity = 0.8
        shadowLayer.backgroundColor = UIColor.clear.cgColor
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.green.cgColor
        shapeLayer.fillColor = UIColor.yellow.cgColor
        
        shadowLayer.insertSublayer(shapeLayer, at: 0)
        self.layer.addSublayer(shadowLayer)
    }
}
