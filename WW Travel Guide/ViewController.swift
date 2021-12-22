//
//  ViewController.swift
//  WW Travel Guide
//
//  Created by Manish Patel on 18/10/21.
//  Copyright © 2021 MSc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonStart: UIButton!

    @IBOutlet weak var button : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        setRadius()
        // Do any additional setup after loading the view.
    }
    
    
//     Mark : - Function
    func setRadius(){
        buttonStart.layer.cornerRadius =  25
    }
    
//    Mark : - Action
    @IBAction func btnClick(_sender:UIButton){
        print("Button")
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let loginScreen = storyBoard.instantiateViewController(withIdentifier: "LoginHomeScreen") as! LoginHomeScreen
        navigationController?.pushViewController(loginScreen, animated: true)
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
