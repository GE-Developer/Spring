//
//  AnimationViewController.swift
//  Spring
//
//  Created by M I C H A E L on 02.05.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
        
    //MARK: - IB Outlets
    @IBOutlet private var animationInfoLabel: UILabel!
    @IBOutlet private var animationView: SpringView!
    
    // MARK: - Private Properties
    private var animation = Animation.getAnimation()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        animationInfoLabel.text = animation.animationInfo
    }
    
    // MARK: - Private Methods
    @IBAction private func runButtonPressed(_ sender: UIButton) {
        animationInfoLabel.text = animation.animationInfo
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getAnimation()
        
        sender.setTitle(animation.nextTitle, for: .normal)
    }
}
