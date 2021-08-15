//
//  register.swift
//  Grg
//
//  Created by COTEMIG on 15/08/21.
//

import UIKit

class register: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtTelefone: UITextField!
    @IBOutlet weak var txtCpf: UITextField!
    @IBOutlet weak var txtSenha: UITextField!
    @IBOutlet weak var txtConfirmarSenha: UITextField!
    
    private var user: user!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnRegister(_ sender: UIButton) {
        if txtNome.text!.isEmpty || txtEmail.text!.isEmpty || txtSenha.text!.isEmpty {
            let alert = UIAlertController(title: "Erro", message: "preencha todos os campos", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .destructive)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }else {
            
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
