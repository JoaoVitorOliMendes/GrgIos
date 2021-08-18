//
//  loginViewController.swift
//  Grg
//
//  Created by COTEMIG on 16/08/21.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtSenha: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnLogin(_ sender: Any) {
        print("email" + txtEmail.text!)
        if let email = defaults.value(forKey: "email" + txtEmail.text!) as? String {
            let senha = String(txtSenha.text!)
            let senhaBd = defaults.value(forKey: "senha" + txtEmail.text!) as? String
            if senha == senhaBd {
                let vc = storyboard?.instantiateViewController(withIdentifier: "main") as! homeViewController
                navigationController?.pushViewController(vc, animated: true)
            }else {
                print("senhas diferentes")
            }
        }else {
            print("ëmail nao reconhecido")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
