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
    
    let defaults = UserDefaults.standard
    
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
            if !txtSenha.text!.elementsEqual(txtConfirmarSenha.text!) {
                let alert = UIAlertController(title: "Erro", message: "As senhas estáo diferentes", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .destructive)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
            }else {
                let userVar = user(
                    nome: txtNome.text!,
                    email: txtEmail.text!,
                    telefone: txtTelefone.text!,
                    cpf: txtCpf.text!,
                    senha: txtSenha.text!
                )
                defaults.set(userVar.nome, forKey: "nome" + userVar.email)
                defaults.set(userVar.email, forKey: "email" + userVar.email)
                defaults.set(userVar.telefone, forKey: "telefone" + userVar.email)
                defaults.set(userVar.cpf, forKey: "cpf" + userVar.email)
                defaults.set(userVar.senha, forKey: "senha" + userVar.email)
                navigationController?.popViewController(animated: true)
            }
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
