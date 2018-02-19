//
//  ViewController.swift
//  Tables-ICE
//
//  Created by Student on 2/15/18.
//  Copyright © 2018 Irvin Do. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "showColorSegue"{
            let colorsVC = segue.destination.childViewControllers[0] as! ColorsTableVC
            //colorsVC.colors = ["cyan","magenta","yellow"]
            
            colorsVC.title = "Choose a color"
        }
    }


}

