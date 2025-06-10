//
//  FadeViewController.swift
//  Music-swift
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit

class FadeViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    var counter = 0
    
    override func viewDidAppear(_ animated: Bool){
        slider.maximumValue = 100.0
      
        let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ timer in self.counter+=1
            self.slider.value = Float(self.counter)
            
            
        }
        
        if counter > 100 {timer.invalidate()}
    }


    
}
