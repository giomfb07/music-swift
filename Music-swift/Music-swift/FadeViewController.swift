//
//  FadeViewController.swift
//  Music-swift
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit

class FadeViewController: UIViewController {

   
    override func viewDidAppear(_ animated: Bool){
        view.backgroundColor = .white
        var counter = 5.0
        let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ timer in counter-=1}
        let alpha = 0.2*counter
        self.view.backgroundColor = .black
        if counter > 5 {timer.invalidate()}
    }


}
