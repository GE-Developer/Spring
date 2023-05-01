//
//  Animation.swift
//  Spring
//
//  Created by M I C H A E L on 02.05.2023.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var animationInfo: String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Delay: \(String(format: "%.2f", delay))
        """
    }
    
    var nextTitle: String {
        "Run \(preset)"
    }
    
    static func getAnimation() -> Animation {
        let animationData = AnimationData.shared
        
        let animation = Animation(
            preset: animationData.animations.randomElement()?.rawValue ?? "",
            curve: animationData.curves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 0.5...1.5),
            duration: Float.random(in: 2...4),
            delay: Float.random(in: 0...1)
        )
        
        return animation
    }
}
