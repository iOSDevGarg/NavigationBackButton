//
//  CheckVC.swift
//  Navigation Back Button
//
//  Created by IosDeveloper on 15/11/17.
//  Copyright © 2017 iOSDeveloper. All rights reserved.
//

import UIKit

class CheckVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Custom Action
    @IBAction func backButtonCustomAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //OverRide default back button Action of navigation Bar
    override func navigationShouldPopOnBackButton() -> Bool {
        //Alert
        let alert = UIAlertController(title:"Condition Title", message: "Do my condition is satisfied ?", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) in
            //if condition not satisfied
            print("Action cancelled")
        }))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action) in
            //if condition yiu require is satisfied
            self.navigationController?.popViewController(animated: true)
        }))
        self.present(alert, animated: true, completion: nil)
        
        //return true
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
