//
//  RegisterViewController.swift
//  Login
//
//  Created by Purna Borra on 07/09/22.
//

import Foundation
import UIKit

class registrationVC:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstNameTF = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        firstNameTF.placeholder = "First Name"
        firstNameTF.borderStyle = .line
        firstNameTF.keyboardType = .default
        firstNameTF.textColor = .black
        firstNameTF.textAlignment = .left
        firstNameTF.backgroundColor = .white
        view.addSubview(firstNameTF)
        
        
        let lastNameTF = UITextField(frame: CGRect(x: 20, y: 170, width: 300, height: 40))
        lastNameTF.placeholder = "Last Name"
        lastNameTF.borderStyle = .line
        lastNameTF.keyboardType = .default
        lastNameTF.textColor = .black
        lastNameTF.textAlignment = .left
        lastNameTF.backgroundColor = .white
        view.addSubview(lastNameTF)
        
        let ageTF = UITextField(frame: CGRect(x: 20, y: 240, width: 300, height: 40))
        ageTF.placeholder = "Age Number"
        ageTF.borderStyle = .line
        ageTF.keyboardType = .numberPad
        ageTF.textColor = .black
        ageTF.textAlignment = .left
        ageTF.backgroundColor = .white
        view.addSubview(ageTF)
        
        let genderTF = UITextField(frame: CGRect(x: 20, y: 310, width: 300, height: 40))
        genderTF.placeholder = "Enter Gender"
        genderTF.borderStyle = .line
        genderTF.keyboardType = .alphabet
        genderTF.textColor = .black
        genderTF.textAlignment = .left
        genderTF.backgroundColor = .white
        view.addSubview(genderTF)
        
        let emailTF = UITextField(frame: CGRect(x: 20, y: 380, width: 300, height: 40))
        emailTF.placeholder = "Enter email ID"
        emailTF.borderStyle = .line
        emailTF.keyboardType = .alphabet
        emailTF.textColor = .black
        emailTF.textAlignment = .left
        emailTF.backgroundColor = .white
        view.addSubview(emailTF)
        
        let passwordTF = UITextField(frame: CGRect(x: 20, y: 440, width: 300, height: 40))
        passwordTF.placeholder = "Enter Password"
        passwordTF.borderStyle = .line
        passwordTF.keyboardType = .alphabet
        passwordTF.textColor = .black
        passwordTF.textAlignment = .left
        passwordTF.backgroundColor = .white
        view.addSubview(passwordTF)
        
        let conformPWTF = UITextField(frame: CGRect(x: 20, y: 510, width: 300, height: 40))
        conformPWTF.placeholder = "re enter password"
        conformPWTF.borderStyle = .line
        conformPWTF.keyboardType = .alphabet
        conformPWTF.textColor = .black
        conformPWTF.textAlignment = .left
        conformPWTF.backgroundColor = .white
        view.addSubview(conformPWTF)
        
        let registerBTN = UIButton(frame: CGRect(x: 50, y: 580, width: 150, height: 50))
        registerBTN.setTitle("Register", for: .normal)
        registerBTN.backgroundColor = .systemTeal
        registerBTN.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        registerBTN.setTitle("tapped", for: .highlighted)
        view.addSubview(registerBTN)
        
    }
    
    @objc func tapped (_sender: UIButton ) {
        let vc = UIViewController()
        vc.title = "Login"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
