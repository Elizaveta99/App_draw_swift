//
//  ViewController.swift
//  application_3
//
//  Created by Lizaveta Rudzko on 2/21/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewTriangle: Triangle!
    @IBOutlet var viewPolygon_10: Polygon_10!
    
    @IBAction func rotationGesture(_ sender: UIRotationGestureRecognizer) {
        self.viewTriangle.backgroundColor = UIColor(patternImage:UIImage(named:"bg3.jpg")!)
        
    }
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        self.viewTriangle.backgroundColor = UIColor(patternImage:UIImage(named:"bg1.jpg")!)
    }
    
    @IBAction func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        self.viewTriangle.backgroundColor = UIColor(patternImage:UIImage(named:"bg2.jpg")!)
        
    }
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        self.viewTriangle.backgroundColor = UIColor(patternImage:UIImage(named:"bg4.jpg")!)
    }
    
    @IBAction func longPressGesture(_ sender: UILongPressGestureRecognizer) {
        self.viewTriangle.backgroundColor = UIColor(patternImage:UIImage(named:"bg5.jpg")!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

