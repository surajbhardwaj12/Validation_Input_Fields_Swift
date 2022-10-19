//
//  Validation.swift
//  InputFieldValidation
//
//  Created by IPS-161 on 18/10/22.
//

import Foundation
class Validation {
   
   public func validateName(name: String) {
       if name.isEmpty{
           print("Please Enter Name")
       }else{
      // Length be 18 characters max and 3 characters minimum, you can always modify.
      let nameRegex = "^[a-zA-Z-]+ ?.* [a-zA-Z-]+$"
      let trimmedString = name.trimmingCharacters(in: .whitespaces)
      let validateName = NSPredicate(format: "SELF MATCHES %@", nameRegex)
      let isValidateName = validateName.evaluate(with: trimmedString)
           if !isValidateName{
               print("Incorrect Name")
           }
//           return isValidateName
       }
   }
    public func validaPhoneNumber(phoneNumber: String)  {
        if phoneNumber.isEmpty {
            print("Please Enter Phone Number")
        }else{
            let phoneNumberRegex = "^[0-9]{8,}$"
            let trimmedString = phoneNumber.trimmingCharacters(in: .whitespaces)
            let validatePhone = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
            let isValidPhone = validatePhone.evaluate(with: trimmedString)
            if !isValidPhone {
                print("Incorrect Phone Number")
            }
//            return isValidPhone
        }
    }
    public func validateEmailId(emailID: String)   {
        if emailID.isEmpty {
            print("Please Enter Email Address")
        }else{
            let emailRegEx = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$*(\\s?)"
            let trimmedString = emailID.trimmingCharacters(in: .whitespaces)
            let validateEmail = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            let isValidateEmail = validateEmail.evaluate(with: trimmedString)
            if !isValidateEmail {
                print("Incorrect Email")
            }
//            return isValidateEmail
        }
    }
    public func validatePassword(password: String) {
        if password.isEmpty{
            print("Please Enter Password")
        }else{
            //Minimum 8 characters at least 1 Alphabet and 1 Number and 1 special character:
            let passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
            /*
             Minimum 8 characters at least 1 Alphabet and 1 Number: "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
             Minimum 8 characters at least 1 Alphabet, 1 Number and 1 Special Character: "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,}$"
             Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet and 1 Number: "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$"
             Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character:
             
             "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[d$@$!%*?&#])[A-Za-z\\dd$@$!%*?&#]{8,}"
             Minimum 8 and Maximum 10 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character:
             
             "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&#])[A-Za-z\\d$@$!%*?&#]{8,10}"
             "^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$"
             */
            let trimmedString = password.trimmingCharacters(in: .whitespaces)
            let validatePassord = NSPredicate(format:"SELF MATCHES %@", passRegEx)
            let isvalidatePass = validatePassord.evaluate(with: trimmedString)
            if !isvalidatePass{
                print("Incorrect Phone Number")
            }
//            return isvalidatePass
        }
    }
   public func validateAnyOtherTextField(otherField: String) -> Bool {
      let otherRegexString = "Your regex String"
      let trimmedString = otherField.trimmingCharacters(in: .whitespaces)
      let validateOtherString = NSPredicate(format: "SELF MATCHES %@", otherRegexString)
      let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
      return isValidateOtherString
   }
}
