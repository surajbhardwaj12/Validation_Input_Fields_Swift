//
//  ViewController.swift
//  InputFieldValidation
//
//  Created by IPS-161 on 18/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtName: UITextField!
    var validation = Validation()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    @IBAction func validateBtn(_ sender: Any) {
       guard let name = txtName.text, let email = txtEmail.text, let password = txtPassword.text,
       let phone = txtPhone.text else {
          return
       }
       self.validation.validateName(name: name)
       self.validation.validateEmailId(emailID: email)
       self.validation.validatePassword(password: password)
       self.validation.validaPhoneNumber(phoneNumber: phone)
//       if (isValidateName == true || isValidateEmail == true || isValidatePass == true || isValidatePhone == true) {
//          print("All fields are correct")
       }
    }



