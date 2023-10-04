//
//  UIButtonExt.swift
//  AnimationApp1
//
//  Created by Sofa on 4.10.23.
//

import UIKit


extension UIButton {
    
    func pulsate() {
        let pulsate = CASpringAnimation(keyPath: "transform.scale")
        pulsate.duration = 0.6
        pulsate.fromValue = 0.7
        pulsate.toValue = 1.3
        pulsate.repeatCount = 5
        pulsate.autoreverses = true
        pulsate.initialVelocity = 0.5
        
        layer.add(pulsate, forKey: nil)
    }
    
    
    
}
