//
//  FadeViewController.swift
//  Music-swift
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit


class FadeViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var slider: UISlider!

    var counter = 0
    var timer: Timer?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        slider.maximumValue = 100.0

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            guard let self = self else { return }

            self.counter += 1
            self.slider.value = Float(self.counter)

            if self.counter >= 100 {
                timer.invalidate()
            }
        }
    }

    func pauseTimer() {
        timer?.invalidate()
    }

    @IBAction func sound(_ sender: Any) {
        pauseTimer()
    }
}
