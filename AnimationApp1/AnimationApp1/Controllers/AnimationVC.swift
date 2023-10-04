//
//  AnimationVC.swift
//  AnimationApp1
//
//  Created by Sofa on 4.10.23.
//

import UIKit

final class AnimationVC: UIViewController {

    @IBOutlet private weak var coreAnimationView: UIView!
    @IBOutlet private weak var stackView: UIStackView!
    @IBOutlet weak var coreLbl: UILabel!
    
    @IBOutlet weak var lottieBtn: UIButton!
    @IBOutlet weak var coreAnimationBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCoreAnimationView()
    }
    
    @IBAction func coreAnimationBtn(_ sender: UIButton) {
        sender.pulsate()
    }
    
    
    

    private func setupCoreAnimationView() {
        UIView.animate(withDuration: 0.7, delay: 0, options: [.autoreverse, .repeat]) { [weak self] in
            self?.coreAnimationView.frame.origin.x += 40
        }
    }
}
