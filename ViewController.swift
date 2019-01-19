//
//  ViewController.swift
//  Drone
//
//  Created by Administrator  on 1/18/19.
//  Copyright © 2019 Administrator . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(sender:)))
        view.addGestureRecognizer(pinch)
    }
    
    @IBAction func Zoom(_ sender: UIPinchGestureRecognizer) {
        print("Zooming In")
    }
    
    @IBAction func Exzoom(_ sender: UIPinchGestureRecognizer) {
        print("Zooming Out")
    }
    @IBAction func Forward(_ sender: UIPanGestureRecognizer) {
        print("Moving Forward")
    }
    @IBAction func Backward(_ sender: UIPanGestureRecognizer) {
        print("Moving Backward")
    }
    @IBAction func Left(_ sender: UIPanGestureRecognizer) {
        print("Moving Left")
    }
    @IBAction func Right(_ sender: UIPanGestureRecognizer) {
        print("Moving Right")
    }

    @objc func handlePinch(sender: UIPinchGestureRecognizer) {
        guard sender.view != nil else { return }
        
        if sender.state == .began || sender.state == .changed {
            sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
            sender.scale = 1.0
        }
    }

}

