//
//  ViewController.swift
//  Demo_Rotate
//
//  Created by Hodi on 5/31/16.
//  Copyright © 2016 Hodi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var redView: UIView!
    
    
    let rotationGesture = UIRotationGestureRecognizer()
    let pinchGesture = UIPinchGestureRecognizer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rotationGesture.delegate = self
        self.rotationGesture.addTarget(self, action: #selector(ViewController.rotateGes(_:)))
        self.view.addGestureRecognizer(rotationGesture)
        
        self.pinchGesture.delegate = self
        self.pinchGesture.addTarget(self, action: #selector(ViewController.pinchGest(_:)))
        self.view.addGestureRecognizer(self.pinchGesture)
        
        
        
    }
    
    func rotateGes(gesture: UIRotationGestureRecognizer){
        self.redView.transform =  CGAffineTransformRotate(self.redView.transform, gesture.rotation)
        
        gesture.rotation = 0
        
    }
    
    func pinchGest(pinch: UIPinchGestureRecognizer){
        self.redView.transform = CGAffineTransformScale(self.redView.transform, pinch.scale, pinch.scale)
        
        pinch.scale = 1.0
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

