//
//  LoginScreen.swift
//  WW Travel Guide
//
//  Created by Manish Patel on 11/10/21.
//  Copyright © 2021 MSc. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {
//    IBOutlets
    
    @IBOutlet weak var sView : UIView!
    @IBOutlet weak var email : UITextField!
    @IBOutlet weak var password : UITextField!
    @IBOutlet weak var buttonForgot : UIButton!
    @IBOutlet weak var buttonLogin : UIButton!
    
//    Mark : - Objects
    
    let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        For Shadow behind view
        
        shadow()
        setRadius()
        self.email.addBottomBorder()
        self.password.addBottomBorder()
//        sView.dropShadow(color: .gray, opacity: 0.4, offSet: CGSize(width: 0, height: 0), radius: 1)
        

      
    }
    
//    Mark : - Actions
    
    @IBAction func btnForgot(_sender : UIButton){
        let forgotPassword = storyBoard.instantiateViewController(withIdentifier: "ForgotPasswordScreen") as! ForgotPasswordScreen
        navigationController?.present(forgotPassword, animated: true, completion: nil)
        print("Forgot Password")
        
    }
    
    @IBAction func btnLogin(_sender:UIButton)
    {
        print("Login")
    }
    
//    Mark : - Function
    
    func setRadius(){
        sView.layer.cornerRadius = 20
        buttonLogin.layer.cornerRadius = 25
    }
    
    func shadow(){
        sView.layer.shadowColor = UIColor.gray.cgColor
        sView.layer.shadowOpacity = 0.5
        sView.layer.shadowOffset = CGSize.zero
        sView.layer.shadowRadius = 5

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

extension UIView {
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius

        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
      }
}
extension UITextField {

    internal func addBottomBorder(height: CGFloat = 1.0, color: UIColor = .black) {
            let borderView = UIView()
            borderView.backgroundColor = color
            borderView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(borderView)
            NSLayoutConstraint.activate(
                [
                    borderView.leadingAnchor.constraint(equalTo: leadingAnchor),
                    borderView.trailingAnchor.constraint(equalTo: trailingAnchor),
                    borderView.bottomAnchor.constraint(equalTo: bottomAnchor),
                    borderView.heightAnchor.constraint(equalToConstant: height)
                ]
            )
        }
    }


