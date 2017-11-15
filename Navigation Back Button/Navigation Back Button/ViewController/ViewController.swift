//
//  ViewController.swift
//  Navigation Back Button
//
//  Created by IosDeveloper on 15/11/17.
//  Copyright © 2017 iOSDeveloper. All rights reserved.
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

    @IBAction func navigateToNext(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CheckVC") as! CheckVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

