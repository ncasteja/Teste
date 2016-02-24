//
//  cadastro.swift
//  Eventos
//
//  Created by Nicolas Junqueira de Souza Alvar de Biaudos de Casteja on 2/22/16.
//  Copyright © 2016 Nicolas de Casteja. All rights reserved.
//

import UIKit

class cadastro: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var erroLabel: UILabel!
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBOutlet weak var confirmarSenhaTextField: UITextField!
    
    
    
    
    var user = "opa"
    var email = "opa"
    var cpf = "opa"
    var senha = "opa"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelText.text = "Nome Qualquer"
        erroLabel.hidden = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cadastrar(sender: AnyObject) {
        
        
        if userTextField.text == "" || emailTextField.text == "" || cpfTextField.text == "" || senhaTextField.text == "" || confirmarSenhaTextField.text == ""{
            
            erroLabel.text = "Voce nao preencheu todos os campos!"
            erroLabel.hidden = false
            
        }
        
        else if senhaTextField.text != confirmarSenhaTextField.text{
            
            erroLabel.text = "Senhas nao sao iguais!"
            erroLabel.hidden = false
        
        
        }
        
        else {
            erroLabel.hidden = true
            
            
            performSegueWithIdentifier("seguePrincipal", sender: nil)
            
            
          //  let vc = Principal()
           // self.presentViewController(vc, animated: true, completion: nil)
            
            
        }
        
        
        
        
        
        labelText.text = userTextField.text
        user = userTextField.text!
        email = emailTextField.text!
        cpf = cpfTextField.text!
        senha = senhaTextField.text!
        
        print(user, email, cpf , senha)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
