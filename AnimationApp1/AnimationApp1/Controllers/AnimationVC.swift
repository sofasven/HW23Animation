//
//  AnimationVC.swift
//  AnimationApp1
//
//  Created by Sofa on 4.10.23.
//

import UIKit
import Lottie

final class AnimationVC: UIViewController {
    
    @IBOutlet private weak var coreAnimationView: UIView!
    @IBOutlet private weak var stackView: UIStackView!
    @IBOutlet weak var coreLbl: UILabel!
    
    @IBOutlet weak var lottieBtn: UIButton!
    
    private var lottieAnimationView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lottieAnimationViewSetup()
        coreAnimationSetup()
    }
    
    @IBAction func coreAnimationBtn(_ sender: UIButton) {
        sender.pulsate()
    }
    
    
    @IBAction func lottieBtnAction() {
        lottieAnimationView.play { completed in
            self.coreLbl.isHidden = false
        }
        
    }
    private func coreAnimationSetup() {
        UIView.animate(withDuration: 0.7, delay: 0, options: [.autoreverse, .repeat]) { [weak self] in
            self?.coreAnimationView.frame.origin.x += 40
        }
    }
    private func lottieAnimationViewSetup() {
        lottieAnimationView = .init(name: animationModel.animations.randomElement() ?? "wired-flat-478-computer-display")
        lottieAnimationView.backgroundColor = .lightGray
        lottieAnimationView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        lottieAnimationView.contentMode = .scaleAspectFit
        lottieAnimationView.loopMode = .repeat(3)
        lottieAnimationView.animationSpeed = 0.7
        stackView.addArrangedSubview(lottieAnimationView)
        coreLbl.isHidden = true
    }
    
    let animationModel = AnimationModel()
    
}
