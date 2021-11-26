//
//  ViewController.swift
//  SampleMVC
//
//  Created by Daniel Pustotin on 26.11.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Connection to the model
    var model = Model()

    // MARK: Handling the user interaction
    @IBAction func generateButton(_ sender: UIButton) {
        model.changeText()
        updateLabel()
    }

    @IBAction func plusButton(_ sender: UIButton) {
        model.increaseLength()
        updateLabel()
    }
    @IBAction func minusButton(_ sender: UIButton) {
        model.decreaseLength()
        updateLabel()
    }
    
    @IBAction func changeButton(_ sender: UIButton) {
        model.changeColor()
        switch model.color {
        case .orange:
            label.textColor = .orange
        case .purple:
            label.textColor = .purple
        }
    }
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        model.changeText()
        updateLabel()

    }

    // MARK: Request to the model
    func updateLabel() {
        label.text = model.text
    }

}


