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
       let isValidateName = self.validation.validateName(name: name)
       if (isValidateName == false) {
          print("Incorrect Name")
          return
       }
       let isValidateEmail = self.validation.validateEmailId(emailID: email)
       if (isValidateEmail == false) {
          print("Incorrect Email")
          return
       }
       let isValidatePass = self.validation.validatePassword(password: password)
       if (isValidatePass == false) {
          print("Incorrect Pass")
          return
       }
       let isValidatePhone = self.validation.validaPhoneNumber(phoneNumber: phone)
       if (isValidatePhone == false) {
          print("Incorrect Phone")
          return
       }
       if (isValidateName == true || isValidateEmail == true || isValidatePass == true || isValidatePhone == true) {
          print("All fields are correct")
       }
    }
 }



