//
//  LoginVC.swift
//  okashi2
//
//  Created by User2 on 2018/03/15.
//  Copyright © 2018年 User2. All rights reserved.
//

import UIKit

class LoginVC: SuperVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //コールバック保持
    var callbackLogin: (() -> Void)? = nil
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Login(_ sender: Any) {
        
         closeScreen()
        //ログイン完了を送信
        self.callbackLogin?()
        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Search", bundle: nil)
//        let nextView = storyboard.instantiateInitialViewController()
//        present(nextView!, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
