//
//  ViewController.swift
//  lab1
//
//  Created by Capgemini-DA071 on 11/21/22.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInBtn(_ sender: Any) {
        let auth = Auth.auth()
        auth.signInAnonymously { (result, err) in
            if let err = err {
                print(err.localizedDescription)
                return
            }
            print("sucessfull login")
        }
    }
    
    @IBAction func signOut(_ sender: Any) {
        let auth = Auth.auth()
        do {
            try auth.signOut()
            print("sucessfull logout")
        } catch (let err) {
            print(err.localizedDescription)
        }
    }
}

