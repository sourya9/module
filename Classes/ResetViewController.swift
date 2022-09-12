//
//  ResetViewController.swift
//  Login
//
//  Created by Purna Borra on 07/09/22.
//

import Foundation
import UIKit

class resetPassword: UIViewController {
    
    override func viewDidLoad() {
       super.viewDidLoad()
        
        let oldPWTF = UITextField(frame: CGRect(x: 20, y: 240, width: 300, height: 40))
        oldPWTF.placeholder = "Enter old Password"
        oldPWTF.borderStyle = .line
        oldPWTF.keyboardType = .alphabet
        oldPWTF.textColor = .black
        oldPWTF.textAlignment = .left
        oldPWTF.backgroundColor = .white
        view.addSubview(oldPWTF)
        
        let newPWTF = UITextField(frame: CGRect(x: 20, y: 320, width: 300, height: 40))
        newPWTF.placeholder = "Enter new Password"
        newPWTF.borderStyle = .line
        newPWTF.keyboardType = .alphabet
        newPWTF.textColor = .black
        newPWTF.textAlignment = .left
        newPWTF.backgroundColor = .white
        view.addSubview(newPWTF)
        
        let conformPWTF = UITextField(frame: CGRect(x: 20, y: 400, width: 300, height: 40))
        conformPWTF.placeholder = "Re enter new Password"
        conformPWTF.borderStyle = .line
        conformPWTF.keyboardType = .alphabet
        conformPWTF.textColor = .black
        conformPWTF.textAlignment = .left
        conformPWTF.backgroundColor = .white
        view.addSubview(conformPWTF)
        
        let submitBTN = UIButton(frame: CGRect(x: 50, y: 580, width: 150, height: 50))
        submitBTN.setTitle("Reset", for: .normal)
        submitBTN.backgroundColor = .cyan
        submitBTN.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        submitBTN.setTitle("tapped", for: .highlighted)
        view.addSubview(submitBTN)
    }
    
    @objc func tapped (_sender: UIButton ) {
        let vc = UIViewController()
        vc.title = "Login"
        navigationController?.pushViewController(vc, animated: true)
    }
}
