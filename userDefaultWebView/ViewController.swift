//
//  ViewController.swift
//  userDefaultWebView
//
//  Created by R82 on 29/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t2: UITextField!
    @IBOutlet weak var t1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        t2.text = "\(UserDefaults.standard.integer(forKey: "eliment"))"
    }


    @IBAction func buttonAction(_ sender: Any) {
        UserDefaults.standard.set(self.t1.text!, forKey: "eliment")
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
        navigationController?.pushViewController(n, animated: true)
    }
}

