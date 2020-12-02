//
//  LoadingView.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 2/12/2020.
//

import UIKit
import Lottie

class LoadingView: UIView {

    class LoadingView: UIView {
        
        let animationView =  AnimationView()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            let animation = Animation.named("loading")
            animationView.animation = animation
            animationView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
            animationView.center = self.center
            animationView.play()
            animationView.play(fromProgress: 0, toProgress: 1, loopMode: LottieLoopMode.loop) { (finished) in
                 
            }
            setAnimationView()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setAnimationView(){
            self.addSubview(animationView)
        }

    }
    
}
