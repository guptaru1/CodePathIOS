//
//  ViewController.swift
//  CodePath App
//
//  Created by Ruchika Gupta on 1/29/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

               let red = CGFloat.random(in: 0...1)
               let green = CGFloat.random(in: 0...1)
               let blue = CGFloat.random(in: 0...1)

               return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
           }
        let randomColor = changeColor()
        
        UIView.transition(with: self.view, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.view.backgroundColor = randomColor
            }, completion: nil)
        
    }
}

