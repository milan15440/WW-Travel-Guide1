//
//  SingUPScreen.swift
//  WW Travel Guide
//
//  Created by Manish Patel on 18/10/21.
//  Copyright © 2021 MSc. All rights reserved.
//

import UIKit

class SingUPScreen: UIViewController {
    
    @IBOutlet weak var sView : UIView!
    @IBOutlet weak var userName : UITextField!
    @IBOutlet weak var email : UITextField!
    @IBOutlet weak var password : UITextField!
    @IBOutlet weak var confirmPassword : UITextField!
    @IBOutlet weak var buttonSignUP : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        shadow()
        setRadius()
        self.userName.addBottomBorder()
        self.email.addBottomBorder()
        self.password.addBottomBorder()
        self.confirmPassword.addBottomBorder()
        
        // Do any additional setup after loading the view.
    }
    
    func setRadius(){
        sView.layer.cornerRadius = 20
        buttonSignUP.layer.cornerRadius = 25
    }
    func shadow(){
        sView.layer.shadowColor = UIColor.gray.cgColor
        sView.layer.shadowOpacity = 0.5
        sView.layer.shadowOffset = CGSize.zero
        sView.layer.shadowRadius = 5

    }
    
    @IBAction func btnSingUP(_sender : UIButton){
        print("SingUP Button")
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

