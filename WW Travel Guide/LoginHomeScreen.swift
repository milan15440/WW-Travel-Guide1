//
//  LoginHomeScreen.swift
//  WW Travel Guide
//
//  Created by Manish Patel on 11/10/21.
//  Copyright © 2021 MSc. All rights reserved.
//

import UIKit

class LoginHomeScreen: UIViewController {
    
    
//    Mark : - IBOutlet
    @IBOutlet weak var buttonLogin : UIButton!
    @IBOutlet weak var buttonSignUP : UIButton!
    
    
//    Mark : - Objects
    let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonLogin.layer.cornerRadius = 25
        buttonSignUP.layer.cornerRadius = 25

        
    }
    
//    Mark : - function Action
    @IBAction func btnLogin(_sender : UIButton){
        
        let loginScreen = storyBoard.instantiateViewController(withIdentifier: "LoginScreen") as! LoginScreen
        navigationController?.pushViewController(loginScreen, animated: true)
        
        print("Login")
        
    }
    @IBAction func btnSignUP(_sender : UIButton){
        
        let singupScreen = storyBoard.instantiateViewController(withIdentifier: "SingUPScreen") as! SingUPScreen
        navigationController?.pushViewController(singupScreen, animated: true)
        print("SingUP")
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
