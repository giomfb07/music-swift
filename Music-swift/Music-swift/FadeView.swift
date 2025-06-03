//
//  FadeView.swift
//  Music-swift
//
//  Created by COTEMIG on 03/06/25.
//

import Foundation

override func viewDidAppear(_ animated: Bool){
    view.backgroundColor = UIColor(red:1,green:1,blue:1,alpha:1)
    var counter = 5.0
    let timer = Timer.scheduledTimer(timeInterval: 1, repeats: true){ timer in counter -=1}
    let alpha = 0.2*counter
    self.view.backgroundColor = UIColor(red:1,green:1,blue:1,alpha:1)
    if counter >5 {timer.invalidate()}
}
