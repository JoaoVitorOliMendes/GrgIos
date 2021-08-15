//
//  login.swift
//  Grg
//
//  Created by COTEMIG on 15/08/21.
//

import UIKit

class login: UIViewController {

    let defaults = UserDefaults.standard
    
    public var userVar: user
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let user = defaults.value(forKey: "Login") as? user {
            self.userVar = user
        }
    }

}
