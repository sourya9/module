//
//  LoginViewController.swift
//  Login
//
//  Created by Purna Borra on 07/09/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    var controller = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  navigationController?.popToRootViewController(animated: true)
        view.backgroundColor = .systemTeal
        let emailTF = UITextField(frame: CGRect(x: 20, y: 200, width: 330, height: 40))
        emailTF.placeholder = "Enter User name"
        emailTF.textAlignment = .left
        emailTF.keyboardType = .default
        emailTF.borderStyle = .line
        emailTF.textColor = .black
        emailTF.backgroundColor = .white
        view.addSubview(emailTF)
        
        
        let passWordTf = UITextField(frame: CGRect(x: 20, y: 270, width: 330, height: 40))
        passWordTf.placeholder = "Enter password"
        passWordTf.textAlignment = .left
        passWordTf.keyboardType = .default
        passWordTf.borderStyle = .line
        passWordTf.textColor = .black
        passWordTf.backgroundColor = .white
        view.addSubview(passWordTf)
        
        
        let loginBTN = UIButton(frame: CGRect(x: 110, y: 350, width: 150, height: 50))
        loginBTN.setTitle("LOGIN", for: .normal)
        loginBTN.backgroundColor = .purple
        loginBTN.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        controller = registrationVC()
        loginBTN.setTitle("tapped", for: .highlighted)
        view.addSubview(loginBTN)
        
        let registerBTN = UIButton(frame: CGRect(x: 30, y: 580, width: 150, height: 50))
        registerBTN.setTitle("Register", for: .normal)
        registerBTN.backgroundColor = .systemYellow
        registerBTN.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        registerBTN.setTitle("clicked", for: .highlighted)
        view.addSubview(registerBTN)
        
        let submitBTN = UIButton(frame: CGRect(x: 220, y: 580, width: 150, height: 50))
        submitBTN.setTitle("Reset", for: .normal)
        submitBTN.backgroundColor = .systemBlue
        submitBTN.addTarget(self, action: #selector(tap), for: .touchUpInside)
        submitBTN.setTitle("tapped", for: .highlighted)
        view.addSubview(submitBTN)
    }
    
    @objc func tapped (_sender: UIButton) {
        let vc = controller
        vc.title = "Login"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func clicked (_sender: UIButton ) {
        let vc = registrationVC()
        vc.title = "Register"
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func tap (_sender: UIButton ) {
        let vc = registrationVC()
        vc.title = "Register"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
