//
//  ViewController.swift
//  LoginSample
//
//  Created by 이주원 on 2021/01/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUsernameButton)
        
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    }
    
    
    //identifier에 따라 다른 동작하도록 만들 수 있다
    //로그인 버튼을 통해서 넘어갔다면 랜딩스크린은 사용자 이름
    //forgot으로 넘어왔다면
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else { return }
       
        if segue.identifier == "ForgottenUsernameOrPassword" {
            if sender == forgotUsernameButton {
                segue.destination.navigationItem.title="Forgot Username"
            } else if sender == forgotPasswordButton {
                segue.destination.navigationItem.title="Forgot Password"
            }
        } else {
            segue.destination.navigationItem.title=self.usernameField.text
        }
    }

}

